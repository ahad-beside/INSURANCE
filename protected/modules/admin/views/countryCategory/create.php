<?php
/* @var $this CountryCategoryController */
/* @var $model CountryCategory */

$this->breadcrumbs=array(
	'Country Categories'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CountryCategory', 'url'=>array('index')),
	array('label'=>'Manage CountryCategory', 'url'=>array('admin')),
);
?>

<h1>Create CountryCategory</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'data'=>$data,)); ?>