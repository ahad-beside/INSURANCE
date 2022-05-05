<?php

class FirstController extends Controller {

    public $layout = '//layouts/1column';

    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    public function accessRules() {
        return array(
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('index'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('subscribe'),
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

    public function actionIndex() {
        $data['info'] = Settings::model()->findByPk(1);
        $this->render('index',array(
            'data'=>$data,
        ));
    }
    
    public function actionSubscribe(){
        $model = new First;
        $model->user_id = Yii::app()->user->userId;
        $model->amount = Settings::model()->findByPk(1)->first_amount;
        if($model->save()){
            Yii::app()->user->setFlash('success', "Thanks for your subscription");
            $this->redirect(array('index'));
        }else{
            print_r($model->getErrors());
        }
                
    }

}
