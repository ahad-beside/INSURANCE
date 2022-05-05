<?php
/* @var $this ManufacturerController */
/* @var $model Manufacturer */

$this->breadcrumbs=array(
	'Manufacturers'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Manufacturer', 'url'=>array('index')),
	array('label'=>'Create Manufacturer', 'url'=>array('create')),
	array('label'=>'View Manufacturer', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Manufacturer', 'url'=>array('admin')),
);
?>

<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Manufacturer</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('manufacturer/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Manufacturer'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('manufacturer/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Manufacturer'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Update Manufacturer
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('_form', array('model' => $model)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>