<?php
/* @var $this ManufacturerController */
/* @var $model Manufacturer */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'settings-form',
        'enableAjaxValidation' => false,
        'htmlOptions' => array('enctype' => 'multipart/form-data'),
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo Yii::app()->easycode->showNotification(); ?>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'first_amount'); ?>
        <?php echo $form->textField($model, 'first_amount', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'first_amount'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'first_lable'); ?>
        <?php echo $form->textField($model, 'first_lable', array('size' => 50, 'maxlength' => 50, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'first_lable'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'first_banner'); ?>
        <?php echo $form->fileField($model, 'first_banner', array('size' => 50, 'maxlength' => 100)); ?>
        <?php echo $form->error($model, 'first_banner'); ?>
        <?php echo Yii::app()->easycode->showImage($model->first_banner, 120, 100);?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'bank_account'); ?>
        <?php echo $form->textArea($model, 'bank_account', array('maxlength' => 300, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'bank_account'); ?>
    </div>

    

    <div class="form-group buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->