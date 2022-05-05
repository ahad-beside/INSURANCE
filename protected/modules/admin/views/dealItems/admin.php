<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Deal Items</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('deal/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Deal'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('deal/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Deal'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>
    
    <div class="col-md-12">
        <?php $this->renderPartial('create', array('model' =>$modelNew,'data'=>$data)); ?>
    </div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Deal Items</div>
            <div class="panel-body">
                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'deal-grid',
                    'dataProvider' => $model->search(),
                    'itemsCssClass' => 'table table-hover table-striped custom-data-table',
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
                            'name'=>'title',
                        ),
                        array(
                          'name'=>'type',
                          'value'=>'CHtml::encode($data->type)',
                        ),
                        array(
                            'name'=>'additional_id',
                            'value'=>'DealItems::model()->getAdditionalIdName($data->type,$data->additional_id)',
                        ),
                        array(
                            'class' => 'CButtonColumn',
                            'template' => '{delete}',
                        ),
                    ),
                ));
                ?>

            </div>
        </div>
    </div>
</div>
