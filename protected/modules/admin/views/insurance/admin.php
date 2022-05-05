<?php
/* @var $this ProductsController */
/* @var $model Products */

$this->breadcrumbs = array(
    'Post' => array('index'),
    'Manage',
);

$this->menu = array(
    array('label' => 'List Posts', 'url' => array('index')),
    array('label' => 'New Post', 'url' => array('create')),
);
?>

<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Insurance Offer</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('insurance/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Product'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('insurance/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Products'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Insurance Offer</div>
            <div class="panel-body">
                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'products-grid',
                    'htmlOptions' => array('class' => 'table-responsive'),
                    'itemsCssClass' => 'table table-hover table-striped custom-data-table',
                    'dataProvider' => $model->search(),
                    'filter' => $model,
                    'columns' => array(
                        array(
                            'class' => 'CCheckBoxColumn',
                            'value' => '$data->id',
                            'selectableRows' => '2',
                            'id' => 'actionCheck'
                        ),
                        array(
                            'class' => 'IndexColumn',
                            'header' => 'Sl',
                            'headerHtmlOptions' => array('style' => 'width:20px;'),
                        ),
						
						
						array(
						'header'=>'Company Name',
						'filter' => CHtml::dropDownList('Products[productCategory]', $model->productCategory, Category::model()->dropDown(true), array('style' => 'width:250px', 'class' => 'form-control chosen-select', 'id'=>'Products_productCategory', 'empty' => 'Select Any')),
						'value'=>'ProductsCategory::model()->find("product_id=$data->id")->category->name',
						),
						
						array(
						'header'=>'Amount of Insurance',
						'value'=>'number_format($data->amount)',
						
						),
                       // 'amount',
						'type',
						//'amount',
						//'gender',
						//'smoker',
						
						 array(
                'header'=>'Age/Gender/Smoker',
                'type'=>'html',
                'value'=>'$data->age_start." - ".$data->age_end."<br>".$data->gender."<br>".$data->smoker',
                'headerHtmlOptions' => array('style' => 'width:20px;', 'style' => 'text-align:center;'),
                'htmlOptions' => array('style' => 'text-align:center;'),
                
            ),
						
						'country_category',
						'annual_rate',
                        /* array(
                            'name' => 'status',
                            'type' => 'raw',
                            'filter' => CHtml::dropDownList('Products[status]', $model->status, Yii::app()->easycode->getStatusOptions('All')),
                            'value' => 'Yii::app()->easycode->getStatus($data->status)',
                            'htmlOptions' => array('class' => 'center-align'),
                        ), */
                        
                        array(
                            'class' => 'CButtonColumn',
                            'template' => '{update}{delete}',
                        ),
                    ),
                ));
                ?>
            </div>
        </div>
    </div>
</div>

<style>
    .custom-data-table tbody tr td{vertical-align: middle}
    .right-align{text-align: right}
    center-align{text-align: center}
</style>



