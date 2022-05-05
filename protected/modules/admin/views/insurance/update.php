<?php
/* @var $this ProductsController */
/* @var $model Products */

$this->breadcrumbs=array(
	'Products'=>array('index'),
	//$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Insurance Offer', 'url'=>array('index')),
	array('label'=>'Create Insurance Offer', 'url'=>array('create')),
	array('label'=>'View Insurance Offer', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Insurance Offer', 'url'=>array('admin')),
);
?>

<div class="row open_page">

    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Insurance Offer</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('insurance/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Products'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('insurance/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Products'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Update Insurance Offer
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('_form', array('model' => $model,'data'=>$data,'modelProductsDiscount'=>$modelProductsDiscount)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>