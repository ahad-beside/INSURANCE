<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Deal</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('deal/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Deal'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('deal/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Deal'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Deals</div>
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
                            'name'=>'name',
                            'type'=>'raw',
                            'value'=>'CHtml::link($data->name,Yii::app()->createUrl("//admin/dealItems/admin",array("dealId"=>$data->id)))',
                        ),
                        'from',
                        'until',
                        array(
                            'name' => 'status',
                            'type' => 'raw',
                            'filter' => CHtml::dropDownList('Products[status]', $model->status, Yii::app()->easycode->getStatusOptions('All')),
                            'value' => 'Yii::app()->easycode->getStatus($data->status)',
                            'htmlOptions' => array('class' => 'center-align'),
                        ),
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
