<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>User</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('industry/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Employer'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('industry/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All User'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                New Employer
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('em_create_form', array('model' => $model,'data'=>$data)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>