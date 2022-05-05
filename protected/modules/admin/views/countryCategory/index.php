<?php
/* @var $this CountryCategoryController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Country Categories',
);

$this->menu=array(
	array('label'=>'Create CountryCategory', 'url'=>array('create')),
	array('label'=>'Manage CountryCategory', 'url'=>array('admin')),
);
?>

<h1>Country Categories</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
