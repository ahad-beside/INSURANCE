
<div class="row open_page">

    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Category</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('option/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Option'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('option/index'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Option'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Options</div>
            <div class="panel-body">

                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'option-grid',
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


