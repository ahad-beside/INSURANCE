<?php

class CategoryBlockController extends Controller {

    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout = '//layouts/main';

    /**
     * @return array action filters
     */
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */
    public function accessRules() {
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index', 'admin', 'view', 'create', 'update', 'delete', 'getSubCategory', 'getSubCategoriesSub'),
                'roles' => array('Admin'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionGetSubCategoriesSub() {
        $catId = $_POST['catid'];
        if (!is_array($catId)) {
            $catId = explode(',', $catId);
        }

        $html = '';
        foreach ($catId as $cat):
            $catInfo = Category::model()->findByPk($cat);
            $childItems = Category::model()->findAll('parent=:catid', array(':catid' => $cat));
            $html .= '<div class="form-group"><label>' . $catInfo->name . '</label><select name="sub_sub_cat[]" multiple="multiple" class="form-control chosen-select sub-' . $catInfo->id . '">';
            foreach ($childItems as $child):
                $html .= '<option value="' . $child->id . '">' . $child->name . '</option>';
            endforeach;
            $html .='</select></div>';
            $i = 0;
        endforeach;
        echo $html;
    }

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id) {
        $this->render('view', array(
            'model' => $this->loadModel($id),
        ));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate() {
        $model = new CategoryBlock;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['CategoryBlock'])) {
            $model->attributes = $_POST['CategoryBlock'];
            $model->sub_categorires = implode(',', $_POST['CategoryBlock']['sub_categorires']);
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d H:i:s');

            $uploadedFile1 = CUploadedFile::getInstance($model, "first_image");
            if ($uploadedFile1) {
                $fileName1 = Yii::app()->easycode->genFileName($uploadedFile1->extensionName);
                $model->first_image = $fileName1;
            }

            $uploadedFile2 = CUploadedFile::getInstance($model, "second_image");
            if ($uploadedFile2) {
                $fileName2 = Yii::app()->easycode->genFileName($uploadedFile2->extensionName);
                $model->second_image = $fileName2;
            }

            $uploadedFile3 = CUploadedFile::getInstance($model, "third_image");
            if ($uploadedFile3) {
                $fileName3 = Yii::app()->easycode->genFileName($uploadedFile3->extensionName);
                $model->third_image = $fileName3;
            }

            if ($model->validate()) {
                $uploadedFile1->saveAs(UPLOAD . '/' . $fileName1);
                $uploadedFile2->saveAs(UPLOAD . '/' . $fileName2);
                $uploadedFile3->saveAs(UPLOAD . '/' . $fileName3);
            }

            if ($model->save()) {
                
                if ($model->layout == 2) {
                    $sub_sub_cat = $_POST['sub_sub_cat'];
                    if (count($sub_sub_cat) > 0) {
                        foreach ($sub_sub_cat as $subcat):
                            $modSub = new SubCategoryBlock;
                            $modSub->category_block_id = $model->id;
                            $modSub->parent_id = Category::model()->findByPk($subcat)->parent;
                            $modSub->child_id = $subcat;
                            $modSub->save();
                        endforeach;
                    }
                }
                
                Yii::app()->user->setFlash('success', "Success: Category block created successfully");
                $this->redirect(array('admin'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $model->sort_order = Yii::app()->easycode->getLastSortingNumber('CategoryBlock', 'sort_order');

        $this->render('create', array(
            'model' => $model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);
        $preImage1 = $model->first_image;
        $preImage2 = $model->second_image;
        $preImage3 = $model->third_image;



        if (isset($_POST['CategoryBlock'])) {

            $model->attributes = $_POST['CategoryBlock'];
            $model->sub_categorires = implode(',', $_POST['CategoryBlock']['sub_categorires']);
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d H:i:s');

            $uploadedFile1 = CUploadedFile::getInstance($model, "first_image");
            if ($uploadedFile1) {
                $fileName1 = Yii::app()->easycode->genFileName($uploadedFile1->extensionName);
                $model->first_image = $fileName1;
            } else {
                $model->first_image = $preImage1;
            }

            $uploadedFile2 = CUploadedFile::getInstance($model, "second_image");
            if ($uploadedFile2) {
                $fileName2 = Yii::app()->easycode->genFileName($uploadedFile2->extensionName);
                $model->second_image = $fileName2;
            } else {
                $model->second_image = $preImage2;
            }

            $uploadedFile3 = CUploadedFile::getInstance($model, "third_image");
            if ($uploadedFile3) {
                $fileName3 = Yii::app()->easycode->genFileName($uploadedFile3->extensionName);
                $model->third_image = $fileName3;
            } else {
                $model->third_image = $preImage3;
            }

            if ($model->validate()) {
                if ($uploadedFile1) {
                    $uploadedFile1->saveAs(UPLOAD . '/' . $fileName1);
                    Yii::app()->easycode->deleteFile($preImage1);
                }
                if ($uploadedFile2) {
                    $uploadedFile2->saveAs(UPLOAD . '/' . $fileName2);
                    Yii::app()->easycode->deleteFile($preImage2);
                }
                if ($uploadedFile3) {
                    $uploadedFile3->saveAs(UPLOAD . '/' . $fileName3);
                    Yii::app()->easycode->deleteFile($preImage3);
                }
            }

            if ($model->save()) {

                if ($model->layout == 2) {
                    $sub_sub_cat = $_POST['sub_sub_cat'];
                    if (count($sub_sub_cat) > 0) {
                        SubCategoryBlock::model()->deleteAll('category_block_id=:blockId', array(':blockId' => $model->id)); //delete previous data
                        foreach ($sub_sub_cat as $subcat):
                            $modSub = new SubCategoryBlock;
                            $modSub->category_block_id = $model->id;
                            $modSub->parent_id = Category::model()->findByPk($subcat)->parent;
                            $modSub->child_id = $subcat;
                            $modSub->save();
                        endforeach;
                    }
                }

                Yii::app()->user->setFlash('success', "Success: Category block updated successfully");
                $this->redirect(array('admin'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }


        $this->render('update', array(
            'model' => $model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id) {
        $this->loadModel($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        /* $dataProvider = new CActiveDataProvider('CategoryBlock');
          $this->render('index', array(
          'dataProvider' => $dataProvider,
          )); */
        $this->actionAdmin();
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new CategoryBlock('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['CategoryBlock']))
            $model->attributes = $_GET['CategoryBlock'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return CategoryBlock the loaded model
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = CategoryBlock::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param CategoryBlock $model the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'category-block-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function actionGetSubCategory() {
        $data = Category::model()->getChildItems($_POST['parentId'], $_POST['parentName']);

        foreach ($data as $k => $v):
            $opt = array();
            $opt['value'] = $k;
            if ($_POST['sel']) {
                $sel = explode(',', $_POST['sel']);
                if (in_array($k, $sel))
                    $opt['selected'] = 'selected';
            }
            echo CHtml::tag('option', $opt, CHtml::encode($v));
        endforeach;
    }

}
