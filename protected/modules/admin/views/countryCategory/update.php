<?php
/* @var $this CountryCategoryController */
/* @var $model CountryCategory */

$this->breadcrumbs=array(
	'Country Categories'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CountryCategory', 'url'=>array('index')),
	array('label'=>'Create CountryCategory', 'url'=>array('create')),
	array('label'=>'View CountryCategory', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CountryCategory', 'url'=>array('admin')),
);
?>

<h1>Update CountryCategory <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>