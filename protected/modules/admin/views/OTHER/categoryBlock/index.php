<?php
/* @var $this CategoryBlockController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Category Blocks',
);

$this->menu=array(
	array('label'=>'Create CategoryBlock', 'url'=>array('create')),
	array('label'=>'Manage CategoryBlock', 'url'=>array('admin')),
);
?>

<h1>Category Blocks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
