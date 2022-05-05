<?php
/* @var $this CategoryController */
/* @var $model Category */
/* @var $form CActiveForm */
?>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/filemanager/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/ckfinder/ckfinder.js"></script>

<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'category-form',
    // Please note: When you enable ajax validation, make sure the corresponding
    // controller action is handling ajax validation correctly.
    // There is a call to performAjaxValidation() commented in generated controller code.
    // See class documentation of CActiveForm for details on this.
    'enableAjaxValidation' => false,
    'htmlOptions' => array('enctype' => 'multipart/form-data'),
        ));
?>

<p class="note">Fields with <span class="required">*</span> are required.</p>

<?php echo Yii::app()->easycode->showNotification(); ?>

<div class="form-group">
    <?php echo $form->labelEx($model, 'name'); ?>
    <?php echo $form->textField($model, 'name', array('class' => 'form-control')); ?>
    <?php echo $form->error($model, 'name'); ?>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'description'); ?>
    <?php echo $form->textArea($model, 'description', array('class' => 'form-control', 'rows' => 6, 'cols' => 50)); ?>
    <?php echo $form->error($model, 'description'); ?>
</div>



<div class="form-group">
    <?php echo $form->labelEx($model, 'image'); ?>
    <?php echo $form->fileField($model, 'image', array('class' => '')); ?>
    
    <?php echo Yii::app()->easycode->showImage($model->image, 120, 100);?>
    <?php echo $form->error($model, 'image'); ?>
</div>




<div class="form-group buttons">
    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<script type="text/javascript">
    var editor = CKEDITOR.replace('Category_description');
    CKFinder.setupCKEditor(editor, '<?php echo Yii::app()->request->baseUrl ?>/ckfinder/');

    var finder = new CKFinder();
    finder.basePath = '<?php echo Yii::app()->request->baseUrl ?>/ckfinder/';
</script>