<?php

class DashboardController extends Controller {

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
                //'users' => array('@'),
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

    public function actionIndex() {
        $data['order'] = new Order;
        $data['order']->unsetAttributes();  // clear any default values
        if (isset($_GET['Order']))
            $data['order']->attributes = $_GET['Order'];
        
        $data['totalOrders'] = $data['order']->count();
        $getTotalSales = $data['order']->FindBySql('select sum(`grand_total`) as `grand_total` from `order`');
        $data['totalSales'] = $getTotalSales['grand_total'];
        $data['recentLoggedUsers'] = User::model()->recentLoginUsers(10);
        
        $this->render('index',array(
            'data'=>$data,
        ));
    }

}
