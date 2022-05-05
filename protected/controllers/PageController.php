<?php

class PageController extends Controller {

    public $layout = '//layouts/1column';
    public $defaultAction = 'view';
    
    public function actionView($id){
        $model = Page::model()->findByPk($id);
        $this->pageTitle = $model->title;
        $this->render('view',array('model'=>$model));
    }

}
