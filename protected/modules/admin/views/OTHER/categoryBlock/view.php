<?php
/* @var $this CategoryBlockController */
/* @var $model CategoryBlock */

$this->breadcrumbs=array(
	'Category Blocks'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List CategoryBlock', 'url'=>array('index')),
	array('label'=>'Create CategoryBlock', 'url'=>array('create')),
	array('label'=>'Update CategoryBlock', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete CategoryBlock', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CategoryBlock', 'url'=>array('admin')),
);
?>

<h1>View CategoryBlock #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'category_id',
		'sub_title',
		'sub_categorires',
		'first_image',
		'second_image',
		'third_image',
		'best_seller',
		'new_arrival',
		'update_by',
		'update_time',
	),
)); ?>
