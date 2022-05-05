<?php
/* @var $this CustomerRequestController */
/* @var $model CustomerRequest */

$this->breadcrumbs=array(
	'Customer Requests'=>array('index'),
	$model->name,
);


?>
<div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Customer Information</h2></div>
        <div class="col-md-6 action-button">
            <?php
           // echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('customerRequest/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Product'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('customerRequest/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All'));
            ?>
        </div>
    </div>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'id',
		//'insurance_id',
		//array(
	//	'label'=>'Insurance Company',
		//'type'=>'raw',
		//'value'=>ProductsCategory::model()->find("product_id=$model->id")->category->name,
		//),
		
		array(
		'name'=>'name',
		'value'=>$model->name,
		),
		//'name',
		'email',
		'phone',
		//'dob',
		array(
		'label'=>'Date Of Birth',
		'type'=>'raw',
		'value'=>date('d-m-Y', strtotime($model->dob)),
		),
		'age',
		'gender',
		'smoker',
		'citizen',
		'residence',
		//'request_date',
		array(
		'label'=>'Request Date',
		'type'=>'raw',
		'value'=>date('d-m-Y', strtotime($model->request_date)),
		),
	),
)); ?>

<br/>
<div class="col-md-12 custom-page-header">
 <div class="col-md-6"><h2>Requested Offer</h2></div>
</div>
 <?php  
 // echo $model->insurance_id;
  $offer=Products::model()->findByPk($model->insurance_id);
  $this->widget('zii.widgets.CDetailView', array(
	'data'=>$offer,
	'attributes'=>array(
  array(
		'label'=>'Insurance Company',
		'type'=>'raw',
		'value'=>ProductsCategory::model()->find("product_id=$offer->id")->category->name,
		),
		'type',
		'country_category',
		array(
		'label'=>'Amount',
		'value'=>number_format($offer->amount),
		),
  
  ),
));
 ?>

