<?php

class OfferController extends Controller {

    public $layout = '//layouts/1column';
    public $defaultAction = 'index';
    
    public function actionIndex(){
        $this->render('index');
    }

}
