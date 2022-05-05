<?php
/* @var $this AttributeController */
/* @var $model Attribute */

$this->breadcrumbs = array(
    'Attributes' => array('index'),
    'Manage',
);

$this->menu = array(
    array('label' => 'List Attribute', 'url' => array('index')),
    array('label' => 'Create Attribute', 'url' => array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#attribute-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>



<div class="row open_page">

    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Attribute</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Attribute'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Attribute'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Attributes</div>
            <div class="panel-body">
                <div class="search-form" style="display:none">
                    <h1>Manage Attributes</h1>

                    <p>
                        You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
                        or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
                    </p>
                    <?php echo CHtml::link('Advanced Search', '#', array('class' => 'search-button')); ?>
                    <?php
                    $this->renderPartial('_search', array(
                        'model' => $model,
                    ));
                    ?>
                </div><!-- search-form -->

                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'attribute-grid',
                    'htmlOptions' => array('class' => 'table-responsive'),
                    'itemsCssClass' => 'table table-hover',
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
                            'name' => 'name',
                            'value' => 'Category::model()->getCategoryName($data->id,$data->name)',
                        ),
                        array(
                            'name' => 'group_id',
                            'value' => 'AttributeGroup::model()->findByPk($data->group_id)->name',
                            'filter' => CHtml::dropDownList("Attribute[group_id]", $model->group_id, CHtml::listData(AttributeGroup::model()->findAll(),id,name),array('empty'=>'All Group')),
                        ),
                        array(
                            'name' => 'sort_order',
                            'filter' => false,
                        ),
                        array(
                            'class' => 'CButtonColumn',
                            'template' => '{update}',
                        ),
                    ),
                ));
                ?>
            </div>
        </div>
    </div>
</div>
