<?php
/* @var $this CountryCategoryController */
/* @var $model CountryCategory */

$this->breadcrumbs=array(
	'Country Categories'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List CountryCategory', 'url'=>array('index')),
	array('label'=>'Create CountryCategory', 'url'=>array('create')),
	array('label'=>'Update CountryCategory', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete CountryCategory', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CountryCategory', 'url'=>array('admin')),
);
?>

<h1>View CountryCategory #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'country_id',
	),
)); ?>
