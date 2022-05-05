<?php
/* @var $this FilterController */
/* @var $model Filter */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'filter-form',
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
        <?php echo $form->labelEx($model, 'parent'); ?>
        <?php echo $form->dropDownList($model, 'parent', Filter::model()->dropDown(), array('class' => 'form-control chosen-select', 'empty' => 'Select Parent')); ?>
        <?php echo $form->error($model, 'parent'); ?>
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