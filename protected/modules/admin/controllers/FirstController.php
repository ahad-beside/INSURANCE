<?php

class FirstController extends Controller {
    
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }
    
    public function accessRules() {
        return array(
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('index', 'verified', 'delete'),
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
        $model = new First;
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['First']))
            $model->attributes = $_GET['First'];
        $this->render('index', array(
            'model' => $model,
        ));
    }
    
    public function actionVerified(){
        if (Yii::app()->request->isAjaxRequest) {
            $data = array('msg' => 'error');
            if ($_POST['value']) {
                $totalOrders = array();
                for ($i = 0; $i < sizeof($_POST['value']); $i++):
                    if (First::model()->exists('id=:id', array(':id' => $_POST['value'][$i]))) {
                        $start = date("Y-m-d H:i:s");
                        $end = date("Y-m-d H:i:s",strtotime('+ 1 Year'));
                        First::model()->updateByPk($_POST['value'][$i], array('start' => $start, 'end'=>$end,'verified'=>1));
                        $totalOrders[] = $_POST['value'][$i];
                    }
                endfor;
                $data = array('msg' => 'success', 'totalOrders' => count($totalOrders));
            } else {
                $data = array('msg' => 'error');
            }
            echo json_encode($data);
        }
    }
    
    public function actionDelete($id) {
        $this->loadModel($id)->delete();
        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('index'));
    }
    
    public function loadModel($id) {
        $model = First::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
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
