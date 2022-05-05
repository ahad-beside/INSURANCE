<?php
/* @var $this CustomerRequestController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Customer Requests',
);

?>

<h1>Customer Requests</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
