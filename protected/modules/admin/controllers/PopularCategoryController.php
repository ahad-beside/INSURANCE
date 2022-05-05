<?php

class PopularCategoryController extends Controller {

    public $layout = '//layouts/main';

    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    public function accessRules() {
        return array(
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('delSlideshowItem', 'index', 'delImage', 'createCategorySlide', 'updateCategorySlide', 'adminCategorySlide','delete'),
                'roles' => array('Admin'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array(''),
                'users' => array('@'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionIndex() {
        //$this->render('index');
        $this->actionAdminCategorySlide();
    }
    
    public function actionDelete($id){
        $model = new SlideshowItems;
        $info = $model->findAll('slideshow_id=:id',array(':id'=>$id));
        if (count($info) > 0) {
            foreach($info as $row):
                $model->deleteByPk($row->id);
                Yii::app()->easycode->deleteFile($row->image);
            endforeach;
        }
        Slideshow::model()->deleteByPk($id);
    }
    
    public function actionDelSlideshowItem() {
        if (isset($_POST['id']) && $_POST['id'] != '') {
            $id = $_POST['id'];
            $model = new SlideshowItems;
            $info = $model->findByPk($id);
            if (count($info) > 0) {
                $model->deleteByPk($id);
                Yii::app()->easycode->deleteFile($info->image);
                echo 1;
            }
        }
    }
    
    public function actionAdminCategorySlide(){
        $model = new Slideshow('searchcategory');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Slideshow']))
            $model->attributes = $_GET['Slideshow'];

        $this->render('adminCategorySlide', array(
            'model' => $model,
        ));
    }
    
    public function actionCreateCategorySlide(){
        $model = new Slideshow;
        $modelItems = new SlideshowItems;

        if (isset($_POST['Slideshow'])) {
            $model->attributes = $_POST['Slideshow'];
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date("Y-m-d H:i:s");
            if ($model->save()) {
                $this->saveItems($model->id, $_POST['SlideshowItems']);
                Yii::app()->user->setFlash('success', "Popular category created successfully");
                $this->redirect(array('adminCategorySlide'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $this->render('createCategorySlide', array(
            'model' => $model,
            'modelItems' => $modelItems,
        ));
    }
    
    public function actionUpdateCategorySlide($id) {
        $model = Slideshow::model()->findByPk($id);
        $modelItems = new SlideshowItems;

        if (isset($_POST['Slideshow'])) {
            $model->attributes = $_POST['Slideshow'];
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date("Y-m-d H:i:s");
            if ($model->save()) {
                $this->saveItems($model->id, $_POST['SlideshowItems']);
                Yii::app()->user->setFlash('success', "Popular category updated successfully");
                $this->redirect(array('adminCategorySlide'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $this->render('updateCategorySlide', array(
            'model' => $model,
            'modelItems' => $modelItems,
        ));
    }

    public static function saveItems($id, $values) {
        if (count($values) > 0) {
            for ($i = 0; $i < count($values['title']); $i++):
                if ($values['title'][$i] != '') {
                    if (isset($values['id'][$i]) && $values['id'][$i] != '') {
                        $model = SlideshowItems::model()->findByPk($values['id'][$i]);
                        $preImage = $model->image;
                    } else {
                        $model = new SlideshowItems;
                        $preImage = '';
                    }

                    $uploadedFile = CUploadedFile::getInstance($model, "image[{$i}]");
                    if ($uploadedFile) {
                        $fileName = Yii::app()->easycode->genFileName($uploadedFile->extensionName);
                        $model->image = $fileName;
                        $uploadedFile->saveAs(UPLOAD . '/' . $fileName);
                        Yii::app()->easycode->deleteFile($preImage);
                    } else {
                        $model->image = $preImage;
                    }

                    $model->slideshow_id = $id;
                    $model->title = $values['title'][$i];
                    $model->tag_line = $values['tag_line'][$i];
                    $model->link = $values['link'][$i];
                    $model->save();
                }
            endfor;
        }
    }
}
