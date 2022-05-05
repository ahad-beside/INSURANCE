<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Manufacturer</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('manufacturer/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Manufacturer'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('manufacturer/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Manufacturer'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                New Manufacturer
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('_form', array('model' => $model)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>