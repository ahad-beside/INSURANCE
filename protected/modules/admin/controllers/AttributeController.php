<?php

class AttributeController extends Controller {

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
                'actions' => array('index', 'view'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('create', 'update'),
                'users' => array('@'),
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
        $model = new Attribute;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Attribute'])) {
            $model->attributes = $_POST['Attribute'];
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d h:i:s');
            if ($model->save()) {
                Yii::app()->user->setFlash('success', "Success: Attribute created successfully");
                $this->redirect(array('admin'));
            } else {
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $model->sort_order = Yii::app()->easycode->getLastSortingNumber('Attribute', 'sort_order');

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

        if (isset($_POST['Attribute'])) {
            $model->attributes = $_POST['Attribute'];
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date('Y-m-d h:i:s');
            if ($model->save()){
                Yii::app()->user->setFlash('success', "Success: Attribute updated successfully");
                $this->redirect(array('admin'));
            }else{
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
        /*$dataProvider = new CActiveDataProvider('Attribute');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));*/
        $this->actionAdmin();
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new Attribute('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Attribute']))
            $model->attributes = $_GET['Attribute'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Attribute the loaded model
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = Attribute::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param Attribute $model the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'attribute-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}
