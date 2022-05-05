<?php

class PaymentMethodsController extends Controller {

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
                'actions' => array('index', 'view', 'create', 'update', 'admin'),
                'roles' => array('Admin'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete'),
                'users' => array('admin'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionCreate() {
        $model = new PaymentMethods;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['PaymentMethods'])) {
            $model->attributes = $_POST['PaymentMethods'];

            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d H:i:s');
            if ($model->validate()) {
                $uploadedFile = CUploadedFile::getInstance($model, "image");
                if ($uploadedFile) {
                    $fileName = Yii::app()->easycode->genFileName($uploadedFile->extensionName);
                    $model->image = $fileName;
                    $uploadedFile->saveAs(UPLOAD . '/' . $fileName);
                }
            }

            if ($model->save()) {
                Yii::app()->user->setFlash('success', "Success: Payment Method created successfully");
                $this->redirect(array('index'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $model->sort_order = Yii::app()->easycode->getLastSortingNumber('PaymentMethods', 'sort_order');

        $this->render('create', array(
            'model' => $model,
        ));
    }

    public function actionUpdate($id) {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);
        $preImage = $model->image;

        if (isset($_POST['PaymentMethods'])) {
            $model->attributes = $_POST['PaymentMethods'];
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d h:i:s');
            if ($model->validate()) {
                $uploadedFile = CUploadedFile::getInstance($model, "image");
                if ($uploadedFile) {
                    $fileName = Yii::app()->easycode->genFileName($uploadedFile->extensionName);
                    $model->image = $fileName;
                    $uploadedFile->saveAs(UPLOAD . '/' . $fileName);
                    Yii::app()->easycode->deleteFile($preImage);
                } else {
                    $model->image = $preImage;
                }
            }
            if ($model->save()) {
                Yii::app()->user->setFlash('success', "Payment Method updated successfully");
                $this->redirect(array('index'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    public function actionDelete($id) {
        $this->loadModel($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
    }

    public function actionIndex() {
        $model = new PaymentMethods('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['PaymentMethods']))
            $model->attributes = $_GET['PaymentMethods'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    public function loadModel($id) {
        $model = PaymentMethods::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

}
