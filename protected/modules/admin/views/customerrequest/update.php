<?php
/* @var $this CustomerRequestController */
/* @var $model CustomerRequest */

$this->breadcrumbs=array(
	'Customer Requests'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CustomerRequest', 'url'=>array('index')),
	array('label'=>'Create CustomerRequest', 'url'=>array('create')),
	array('label'=>'View CustomerRequest', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CustomerRequest', 'url'=>array('admin')),
);
?>

<h1>Update CustomerRequest <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>