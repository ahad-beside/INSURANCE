<?php
/* @var $this FilterController */
/* @var $model Filter */

$this->breadcrumbs=array(
	'Filters'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Filter', 'url'=>array('index')),
	array('label'=>'Create Filter', 'url'=>array('create')),
	array('label'=>'View Filter', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Filter', 'url'=>array('admin')),
);
?>

<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Filter</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('filter/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Filter'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('filter/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Filter'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Update Filter
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