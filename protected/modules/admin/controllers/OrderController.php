<?php

class OrderController extends Controller {

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
                'actions' => array('index', 'view', 'create', 'update','shipped','delivered','canceled','hold'),
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
        $model = new Order;
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Order']))
            $model->attributes = $_GET['Order'];
        $this->render('index',array(
            'model'=>$model,
        ));
    }

    public function actionView($id){
        $model = Order::model()->findByPk((int)$id);
        if(isset($_GET['print'])) {
            $this->layout = '//layouts/print';
            $mPDF1 = Yii::app()->ePdf->mpdf();
            $mPDF1 = Yii::app()->ePdf->mpdf('', 'A4', 0, '', 5, 5, 5, 5);
            $mPDF1->WriteHTML($this->renderPartial('view', array(
                'model' => $model,
            ), true));
            $fileName = "Invoice of #" . $model->order_number . ".pdf";
            //$mPDF1->Output($fileName, 'D');
            $mPDF1->Output($fileName, 'I');
        }else {
            $this->render('view', array(
                'model' => $model,
            ));
        }
    }

    public function actionShipped(){
        if (Yii::app()->request->isAjaxRequest) {
            $data = array('msg' => 'error');
            if ($_POST['value']) {
                $totalOrders = array();
                for ($i = 0; $i < sizeof($_POST['value']); $i++):
                    if (Order::model()->exists('id=:id', array(':id' => $_POST['value'][$i]))) {
                        Order::model()->updateByPk($_POST['value'][$i], array('status' => 'Shipped'));

                        //Save Order process
                        $process = new OrderProcess;
                        $process->order_id_fk = $_POST['value'][$i];
                        $process->status = 'Shipped';
                        $process->save();
                        $totalOrders[] = $_POST['value'][$i];

                        //mail to user
                        $orderInfo = Order::model()->findByPk((int)$_POST['value'][$i]);
                        $mail = new YiiMailer('view', array('model' => $orderInfo));
                        $mail->setLayout('mail');
                        $mail->setFrom(Yii::app()->params->adminEmail, 'Wavesales');
                        $mail->setSubject('Shipped Order - '.$orderInfo->order_number.' - Wavesales');
                        $mail->setTo($orderInfo->userIdFk->email);
                        $mail->send();
                    }
                endfor;
                $data = array('msg' => 'success', 'totalOrders' => count($totalOrders));
            } else {
                $data = array('msg' => 'error');
            }
            echo json_encode($data);
        }
    }

    public function actionDelivered(){
        if (Yii::app()->request->isAjaxRequest) {
            $data = array('msg' => 'error');
            if ($_POST['value']) {
                $totalOrders = array();
                for ($i = 0; $i < sizeof($_POST['value']); $i++):
                    if (Order::model()->exists('id=:id', array(':id' => $_POST['value'][$i]))) {
                        Order::model()->updateByPk($_POST['value'][$i], array('status' => 'Delivered'));

                        //Save Order process
                        $process = new OrderProcess;
                        $process->order_id_fk = $_POST['value'][$i];
                        $process->status = 'Delivered';
                        $process->save();
                        $totalOrders[] = $_POST['value'][$i];

                        //mail to user
                        $orderInfo = Order::model()->findByPk((int)$_POST['value'][$i]);
                        $mail = new YiiMailer('view', array('model' => $orderInfo));
                        $mail->setLayout('mail');
                        $mail->setFrom(Yii::app()->params->adminEmail, 'Wavesales');
                        $mail->setSubject('Delivered Order - '.$orderInfo->order_number.' - Wavesales');
                        $mail->setTo($orderInfo->userIdFk->email);
                        $mail->send();
                    }
                endfor;
                $data = array('msg' => 'success', 'totalOrders' => count($totalOrders));
            } else {
                $data = array('msg' => 'error');
            }
            echo json_encode($data);
        }
    }

    public function actionCanceled(){
        if (Yii::app()->request->isAjaxRequest) {
            $data = array('msg' => 'error');
            if ($_POST['value']) {
                $totalOrders = array();
                for ($i = 0; $i < sizeof($_POST['value']); $i++):
                    if (Order::model()->exists('id=:id', array(':id' => $_POST['value'][$i]))) {
                        Order::model()->updateByPk($_POST['value'][$i], array('status' => 'Canceled'));

                        //Save Order process
                        $process = new OrderProcess;
                        $process->order_id_fk = $_POST['value'][$i];
                        $process->status = 'Canceled';
                        $process->save();
                        $totalOrders[] = $_POST['value'][$i];

                        //mail to user
                        $orderInfo = Order::model()->findByPk((int)$_POST['value'][$i]);
                        $mail = new YiiMailer('view', array('model' => $orderInfo));
                        $mail->setLayout('mail');
                        $mail->setFrom(Yii::app()->params->adminEmail, 'Wavesales');
                        $mail->setSubject('Canceled Order - '.$orderInfo->order_number.' - Wavesales');
                        $mail->setTo($orderInfo->userIdFk->email);
                        $mail->send();
                    }
                endfor;
                $data = array('msg' => 'success', 'totalOrders' => count($totalOrders));
            } else {
                $data = array('msg' => 'error');
            }
            echo json_encode($data);
        }
    }

    public function actionHold(){
        if (Yii::app()->request->isAjaxRequest) {
            $data = array('msg' => 'error');
            if ($_POST['value']) {
                $totalOrders = array();
                for ($i = 0; $i < sizeof($_POST['value']); $i++):
                    if (Order::model()->exists('id=:id', array(':id' => $_POST['value'][$i]))) {
                        Order::model()->updateByPk($_POST['value'][$i], array('status' => 'Hold'));

                        //Save Order process
                        $process = new OrderProcess;
                        $process->order_id_fk = $_POST['value'][$i];
                        $process->status = 'Hold';
                        $process->save();
                        $totalOrders[] = $_POST['value'][$i];

                        //mail to user
                        $orderInfo = Order::model()->findByPk((int)$_POST['value'][$i]);
                        $mail = new YiiMailer('view', array('model' => $orderInfo));
                        $mail->setLayout('mail');
                        $mail->setFrom(Yii::app()->params->adminEmail, 'Wavesales');
                        $mail->setSubject('Hold Order - '.$orderInfo->order_number.' - Wavesales');
                        $mail->setTo($orderInfo->userIdFk->email);
                        $mail->send();
                    }
                endfor;
                $data = array('msg' => 'success', 'totalOrders' => count($totalOrders));
            } else {
                $data = array('msg' => 'error');
            }
            echo json_encode($data);
        }
    }
}
