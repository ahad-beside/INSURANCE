<?php
/* @var $this ManufacturerController */
/* @var $model Manufacturer */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'manufacturer-form',
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo Yii::app()->easycode->showNotification(); ?>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'facebook'); ?>
        <?php echo $form->textField($model, 'facebook', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'facebook'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'twitter'); ?>
        <?php echo $form->textField($model, 'twitter', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'twitter'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'google'); ?>
        <?php echo $form->textField($model, 'google', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'google'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'youtube'); ?>
        <?php echo $form->textField($model, 'youtube', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'youtube'); ?>
    </div>

    

    <div class="form-group buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->