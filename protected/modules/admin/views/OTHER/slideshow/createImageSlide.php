<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Image Slider</h2></div>
        <div class="col-md-6 action-button">
            <?php
            echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('slideshow/createImageSlide'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Slider'));
            echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('slideshow/adminImageSlide'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Slider'));
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                New Slider
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('_formImageSlide', array('model' => $model,'modelItems'=>$modelItems)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>