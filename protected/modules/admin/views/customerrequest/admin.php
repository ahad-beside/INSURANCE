<?php
$this->breadcrumbs = array(
    'Post' => array('index'),
    'Manage',
);


?>

<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Customer Request</h2></div>
        <div class="col-md-6 action-button">
            <?php
           // echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('customerRequest/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Product'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('customerRequest/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Insurance Offer</div>
            <div class="panel-body">

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'customer-request-grid',
	'htmlOptions' => array('class' => 'table-responsive'),
                    'itemsCssClass' => 'table table-hover table-striped custom-data-table',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		 array(
                            'class' => 'IndexColumn',
                            'header' => 'Sl',
                            'headerHtmlOptions' => array('style' => 'width:20px;'),
                        ),
						
						
		
		/* array(
		'header' => 'Insurance Company',
		'type'=>'raw',
		'filter' => CHtml::dropDownList('CustomerRequest[productCategory]', Products::model()->productCategory, Category::model()->dropDown(true), array('style' => 'width:250px', 'class' => 'form-control chosen-select', 'id'=>'Products_productCategory', 'empty' => 'Select Any')),
		'value'=>'CHtml::link(ProductsCategory::model()->find("product_id=$data->insurance_id")->category->name, Yii::app()->createUrl("//admin/customerrequest/view", array("id"=>$data->id)))',
		), */
		
		array(
		'header'=>'Requested Date',
		//'type'=>'raw',
		'value'=>'date("d-m-Y", strtotime($data->request_date))',
		
		),
		
		array(
		'header'=>'Customer Information',
		'type'=>'raw',
		'value'=>'CHtml::link($data->name."<br/>".$data->email."<br/>".$data->phone, Yii::app()->createUrl("//admin/customerrequest/view", array("id"=>$data->id)))',
		
		),
		
		//'insurance_id',
		//'name',
		//'email',
		//'phone',
		
		array(
		'header' => 'Requested Company',
		'type'=>'raw',
		//'filter' => CHtml::dropDownList('CustomerRequest[companyCategory]', $model->model()->companyCategory, Category::model()->dropDown(true), array('style' => 'width:250px', 'class' => 'form-control chosen-select', 'id'=>'Products_productCategory', 'empty' => 'Select Any')),
		'value'=>'CHtml::link(ProductsCategory::model()->find("product_id=$data->insurance_id")->category->name, Yii::app()->createUrl("//admin/customerrequest/view", array("id"=>$data->id)))',
		),
		
		 array(
		'header' => 'Type of Insurance',
		'type'=>'raw',
		'value'=>'Products::model()->findByPk($data->insurance_id)->type',
		//'value'=>'CHtml::link(ProductsCategory::model()->find("product_id=$data->insurance_id")->category->name, Yii::app()->createUrl("//admin/customerrequest/view", array("id"=>$data->id)))',
		), 
		
		array(
		'header' => 'Amount',
		'type'=>'raw',
		'value'=>'number_format(Products::model()->findByPk($data->insurance_id)->amount)',
		//'value'=>'CHtml::link(ProductsCategory::model()->find("product_id=$data->insurance_id")->category->name, Yii::app()->createUrl("//admin/customerrequest/view", array("id"=>$data->id)))',
		),
		/* array(
		'header' => 'DOB',
		'value'=>'date("d/m/Y", strtotime($data->dob))',
		), */
		/*
		'age',
		'gender',
		'smoker',
		'citizen',
		'residence',
		'request_date',
		*/
		array(
			//'class'=>'CButtonColumn',
			
			'class' => 'CButtonColumn',
                            'template' => '{view}{delete}',
		),
	),
)); ?>

 </div>
        </div>
    </div>
</div>

<style>
    .custom-data-table tbody tr td{vertical-align: middle}
    .right-align{text-align: right}
    center-align{text-align: center}
</style>

