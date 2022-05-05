<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Category Block</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('categoryBlock/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Block'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('categoryBlock/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Block'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Category Block</div>
            <div class="panel-body">
                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'category-block-grid',
                    'htmlOptions' => array('class' => 'table-responsive'),
                    'itemsCssClass' => 'table table-hover',
                    'dataProvider' => $model->search(),
                    //'filter' => $model,
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
                            'name' => 'category_id',
                            'value'=>'Category::model()->getCategoryName($data->category_id)',
                        ),
                        'sub_title',
                        array(
                            'name' => 'sort_order',
                            'filter' => false,
                        ),
                        array(
                            'name' => 'status',
                            'type' => 'raw',
                            'filter' => CHtml::dropDownList('Products[status]', $model->status, Yii::app()->easycode->getStatusOptions('All')),
                            'value' => 'Yii::app()->easycode->getStatus($data->status)',
                            'htmlOptions' => array('class' => 'center-align'),
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

