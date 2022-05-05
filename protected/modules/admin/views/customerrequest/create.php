<?php
/* @var $this CustomerRequestController */
/* @var $model CustomerRequest */

$this->breadcrumbs=array(
	'Customer Requests'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CustomerRequest', 'url'=>array('index')),
	array('label'=>'Manage CustomerRequest', 'url'=>array('admin')),
);
?>

<h1>Create CustomerRequest</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>