<?php

class DealItemsController extends Controller {

    public $layout = '//layouts/main';

    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    public function accessRules() {
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index', 'view', 'create', 'update', 'admin', 'delete'),
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
        $model = new DealItems;
        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['DealItems'])) {
            $model->attributes = $_POST['DealItems'];
            
            if ($model->save()){
                Yii::app()->user->setFlash('success', "Deal Items created successfully");
                $this->redirect(array('admin'));
            }else{
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

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

        if (isset($_POST['DealItems'])) {
            $model->attributes = $_POST['DealItems'];
            $model->from = date("Y-m-d H:i:00",strtotime($_POST['Deal']['from']));
            $model->until = date("Y-m-d H:i:00",strtotime($_POST['Deal']['until']));
            $model->update_by = Yii::app()->user->userId;
            $model->update_time = date("Y-m-d H:i:s");
            if ($model->save()){
                Yii::app()->user->setFlash('success', "Deal updated successfully");
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
        /*$dataProvider = new CActiveDataProvider('Deal');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));*/
        $this->actionAdmin();
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new DealItems('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['DealItems']))
            $model->attributes = $_GET['DealItems'];
        
        
        $modelNew = new DealItems;
        
        if(Yii::app()->getRequest()->getQuery('dealId')!=''){
            $modelNew->deal_id = Yii::app()->getRequest()->getQuery('dealId');
            $model->deal_id = $modelNew->deal_id;
            $data['dealName'] = Deal::model()->findByPk(Yii::app()->getRequest()->getQuery('dealId'))->name;
        }
        
        if (isset($_POST['DealItems'])) {
            $modelNew->attributes = $_POST['DealItems'];
            
            if ($modelNew->save()){
                Yii::app()->user->setFlash('success', "Deal Items created successfully");
                $this->redirect(array('admin','dealId'=>$modelNew->deal_id));
            }else{
                Yii::app()->user->setFlash('warning', "Warning: Please check the form carefully for errors!");
            }
        }

        $this->render('admin', array(
            'model' => $model,
            'modelNew'=>$modelNew,
            'data'=>$data,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Deal the loaded model
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = DealItems::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }
}
