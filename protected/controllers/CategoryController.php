<?php

class CategoryController extends Controller {

    public $layout = '//layouts/productList';

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
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('index', 'view', 'featuredProducts'),
                'users' => array('*'),
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

    public function actionIndex($id) {
        $data['categoryName'] = Category::model()->FindByPk($id)->name;

        if ($_GET['filter']) {
            $data['getFilter'] = $_GET['filter'];
            //$filter = implode(',', $data['getFilter']);
            $filter = $data['getFilter'];
        } else {
            $data['getFilter'] = array();
            $filter = array();
        }

        if ($_GET['product_sort_val']) {
            $sortval = $_GET['product_sort_val'];
        } else {
            $sortval = '';
        }

        if ($_GET['q']) {
            $data['q'] = $_GET['q'];
        } else {
            $data['q'] = '';
        }

        $data['products'] = Products::model()->getProductList($id, $filter, $sortval, $data['q']); //Get Products List
        $data['filter_filter'] = Products::model()->filterFilter(Products::model()->getProductList($id, array(), '', '', '24', false)); //Get Filter Option

        if ($_GET['filter'] || $_GET['product_sort_val'] || $_GET['q'])
            $viewFile = 'view';
        else
            $viewFile = 'index';

        $this->render($viewFile, array(
            'id' => $id,
            'data' => $data,
        ));
    }

    public function actionView($id) {
        $data['categoryName'] = Category::model()->FindByPk($id)->name;
        
        $this->pageTitle = $data['categoryName'];

        if ($_GET['filter']) {
            $data['getFilter'] = $_GET['filter'];
            $filter = $data['getFilter'];

            foreach ($data['getFilter'] as $k => $v):
                foreach ($data['getFilter'][$k] as $val):
                    $data['allFilters'][] = $val;
                endforeach;
            endforeach;
        } else {
            $data['allFilters'] = array();
            $data['getFilter'] = array();
            $filter = array();
        }

        if ($_GET['product_sort_val']) {
            $sortval = $_GET['product_sort_val'];
        } else {
            $sortval = '';
        }

        if ($_GET['q']) {
            $data['q'] = $_GET['q'];
        } else {
            $data['q'] = '';
        }

        if ($_GET['offset'])
            $offset = $_GET['offset'];
        else
            $offset = '0';

        $data['products'] = Products::model()->getProductList($id, $filter, $sortval, $data['q'], $offset); //Get Products List
        //echo $data['products'];exit();
        $data['filter_filter'] = Products::model()->filterFilter(Products::model()->getProductList($id, array(), '', '', '24', false)); //Get Filter Option

        if (isset($_GET['heading']) && $_GET['heading'] == 'heading') {
            $data['featuredProducts'] = Products::model()->getFeaturedProductList($id); //Get Products List
            $data['accessoriesProducts'] = Products::model()->getAccessoriesProductList($id); //Get Products List
            $viewFile = 'index';
        } else {
            $viewFile = 'view';
            $this->layout = '//layouts/expandProductList';
        }


        if (Yii::app()->request->isAjaxRequest) {
            $this->renderPartial('//category/productsListing', array(
                'data' => $data,
            ));
        } else {
            $this->render($viewFile, array(
                'id' => $id,
                'data' => $data,
            ));
        }
    }

    public function actionFeaturedProducts() {
        $id = (int) $_GET['category'];

        $data['allFilters'] = array();
        $data['getFilter'] = array();
        $filter = array();

        $data['categoryName'] = Category::model()->FindByPk($id)->name;
        $data['featuredProducts'] = Products::model()->getFeaturedProductList($id, '');
        $data['filter_filter'] = Products::model()->filterFilter(Products::model()->getProductList($id, array(), '', '', '24', false));

        $this->render('viewAllFeatured', array(
            'id' => $id,
            'data' => $data,
        ));
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
