<?php
/* @var $this DealController */
/* @var $model Deal */
/* @var $form CActiveForm */
?>

<div class="form col-md-6">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'deal-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo Yii::app()->easycode->showNotification(); ?>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'name'); ?>
        <?php echo $form->textField($model, 'name', array('size' => 60, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'name'); ?>
    </div>
    
    <div class="form-group">
        <?php echo $form->labelEx($model, 'from'); ?>
        <?php
        $this->widget('ext.YiiDateTimePicker.jqueryDateTime', array(
            'model' => $model,
            'attribute' => 'from',
            'options' => array(
                'format'=>'d-m-Y H:i',
            ), //DateTimePicker options
            'htmlOptions' => array('class'=>'form-control','value'=>($model->from=='0000-00-00 00:00:00')?date('d-m-Y H:i'):date('d-m-Y H:i',strtotime($model->from))),
        ));
        ?>
        <?php echo $form->error($model, 'until'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'until'); ?>
        <?php
        $this->widget('ext.YiiDateTimePicker.jqueryDateTime', array(
            'model' => $model,
            'attribute' => 'until',
            'options' => array(
                'format'=>'d-m-Y H:i',
            ), //DateTimePicker options
            'htmlOptions' => array('class'=>'form-control','value'=>($model->until=='0000-00-00 00:00:00')?date('d-m-Y H:i'):date('d-m-Y H:i',strtotime($model->until))),
        ));
        ?>
        <?php echo $form->error($model, 'until'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'status'); ?>
        <?php echo $form->dropDownList($model, 'status', Yii::app()->easycode->loadStatusDropdownOptions(), array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'status'); ?>
    </div>



    <div class="form-group">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->