<?php
/* @var $this ManufacturerController */
/* @var $model Manufacturer */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'advertisement-form',
        'enableAjaxValidation' => false,
        'htmlOptions' => array('enctype' => 'multipart/form-data'),
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo Yii::app()->easycode->showNotification(); ?>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'name'); ?>
        <?php echo $form->textField($model, 'name', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'name'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'image'); ?>
        <?php echo $form->fileField($model, 'image', array('class' => '')); ?>
        <?php echo $form->error($model, 'image'); ?>
        <?php echo Yii::app()->easycode->showImage($model->image, 120, 100);?>
    </div>
    
    <div class="form-group">
        <?php echo $form->labelEx($model, 'link'); ?>
        <?php echo $form->textField($model, 'link', array('size' => 50, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'link'); ?>
    </div>
    
    <div class="form-group">
        <?php echo $form->labelEx($model, 'position'); ?>
        <?php echo $form->dropDownList($model, 'position', array('Sidebar-Top'=>'Sidebar-Top','Sidebar-Bottom'=>'Sidebar-Bottom',
            'Category-Sidebar'=>'Category-Sidebar'), array('class'
        => 'form-control')); ?>
        <?php echo $form->error($model, 'position'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'sort_order'); ?>
        <?php echo $form->textField($model, 'sort_order', array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'sort_order'); ?>
    </div>

    <div class="form-group buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->