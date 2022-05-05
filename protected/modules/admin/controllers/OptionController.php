<?php

class OptionController extends Controller {

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
                'actions' => array('index', 'create', 'update', 'delItems'),
                'roles' => array('Admin'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionDelItems() {
        if (isset($_POST['delId']) && $_POST['delId'] != '') {
            $id = $_POST['delId'];
            $model = new OptionItem;
            $info = $model->findByPk($id);
            if (count($info) > 0) {
                $model->deleteByPk($id);
                Yii::app()->easycode->deleteFile($info->image);
                echo 1;
            }
        }
    }

    public function actionIndex() {
        $model = new Option('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Option']))
            $model->attributes = $_GET['Option'];

        $this->render('index', array(
            'model' => $model,
        ));
    }

    public function actionCreate() {
        $optionModel = new Option;
        $itemsModel = new OptionItem;

        if ($_POST) {
            $optionModel->attributes = $_POST['Option'];
            $optionModel->update_by = Yii::app()->user->userId;
            $optionModel->update_time = date('Y-m-d h:i:s');
            if ($optionModel->save()) {
                Yii::app()->user->setFlash('success', "Success: Option created successfully");

                for ($i = 0; $i <= sizeof($_POST['OptionItem']['name']); $i++):
                    if ($_POST['OptionItem']['name'][$i] != '') {
                        $itemsModel = new OptionItem;
                        $itemsModel->name = $_POST['OptionItem']['name'][$i];
                        $itemsModel->option_id = $optionModel->id;
                        $itemsModel->sort_order = $_POST['OptionItem']['sort_order'][$i];

                        $uploadedFile = CUploadedFile::getInstance($itemsModel, "image[{$i}]");
                        if ($uploadedFile) {
                            $fileName = Yii::app()->easycode->genFileName($uploadedFile->extensionName);
                            $itemsModel->image = $fileName;
                            $uploadedFile->saveAs(UPLOAD . '/' . $fileName);
                        }
                        $itemsModel->save();
                    }
                endfor;

                $this->redirect(array('index'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $optionModel->sort_order = Yii::app()->easycode->getLastSortingNumber('Option', 'sort_order');

        $this->render('create', array(
            'optionModel' => $optionModel,
            'itemsModel' => $itemsModel,
        ));
    }

    public function actionUpdate($id) {
        $optionModel = Option::model()->findByPk($id);
        $itemsModel = OptionItem::model()->findAll('option_id=:optionId', array(':optionId' => $id));

        if ($_POST) {
            $optionModel->attributes = $_POST['Option'];
            $optionModel->update_by = Yii::app()->user->userId;
            $optionModel->update_time = date('Y-m-d h:i:s');
            if ($optionModel->save()) {
                Yii::app()->user->setFlash('success', "Success: Option updated successfully");



                for ($i = 0; $i <= sizeof($_POST['OptionItem']['name']); $i++):
                    if ($_POST['OptionItem']['name'][$i] != '') {

                        if ($_POST['OptionItem']['id'][$i]) {
                            $itemsModel = OptionItem::model()->findByPk($_POST['OptionItem']['id'][$i]);
                            $preImage = $itemsModel->image;
                        } else {
                            $itemsModel = new OptionItem;
                            $preImage = '';
                        }


                        $itemsModel->name = $_POST['OptionItem']['name'][$i];
                        $itemsModel->sort_order = $_POST['OptionItem']['sort_order'][$i];
                        $itemsModel->option_id = $optionModel->id;

                        $uploadedFile = CUploadedFile::getInstance($itemsModel, "image[{$i}]");
                        if ($uploadedFile) {
                            $fileName = Yii::app()->easycode->genFileName($uploadedFile->extensionName);
                            $itemsModel->image = $fileName;
                            $uploadedFile->saveAs(UPLOAD . '/' . $fileName);
                            Yii::app()->easycode->deleteFile($preImage);
                        }else {
                            $itemsModel->image = $preImage;
                        }
                        $itemsModel->save();
                    }
                endfor;

                $this->redirect(array('index'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }



        $this->render('update', array(
            'optionModel' => $optionModel,
            'itemsModel' => $itemsModel,
        ));
    }

    // Uncomment the following methods and override them if needed
    /*
      public function filters()
      {
      // return the filter configuration for this controller, e.g.:
      return array(
      'inlineFilterName',
      array(
      'class'=>'path.to.FilterClass',
      'propertyName'=>'propertyValue',
      ),
      );
      }

      public function actions()
      {
      // return external action classes, e.g.:
      return array(
      'action1'=>'path.to.ActionClass',
      'action2'=>array(
      'class'=>'path.to.AnotherActionClass',
      'propertyName'=>'propertyValue',
      ),
      );
      }
     */
}
