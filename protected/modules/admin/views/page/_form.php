<?php
/* @var $this ManufacturerController */
/* @var $model Manufacturer */
/* @var $form CActiveForm */
?>

<?php
/* $this->widget('ext.kindeditor.KindEditorWidget', array(
  'id' => 'Page_description', //Textarea id
  // Additional Parameters (Check http://www.kindsoft.net/docs/option.html)
  'items' => array(
  'langType' => 'en',
  'width' => '100%',
  'height' => '300px',
  'themeType' => 'simple',
  'allowImageUpload' => false,
  'allowFileManager' => false,
  'items' => array(
  'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
  'underline', 'removeformat', '|', 'justifyleft', 'justifycenter',
  'justifyright', 'insertorderedlist', 'insertunorderedlist', '|',
  'emoticons', 'image', 'link',),
  ),
  )); */
?>
<script src="<?php echo Yii::app()->request->baseUrl ?>/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/ckfinder/ckfinder.js"></script>

<div class="form">
    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'page-form',
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo Yii::app()->easycode->showNotification(); ?>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'title'); ?>
        <?php echo $form->textField($model, 'title', array('size' => 50, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'title'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'description'); ?>
        <?php echo $form->textArea($model, 'description', array('rows' => 6, 'cols' => 50, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'description'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'status'); ?>
        <?php echo $form->dropdownList($model, 'status', Yii::app()->easycode->getStatusOptions(), array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'status'); ?>
    </div>

    <div class="form-group buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
<script>
    var editor = CKEDITOR.replace('Page_description',
            {
                filebrowserImageUploadUrl: '<?php echo Yii::app()->request->baseUrl ?>/imgupload.php',
                filebrowserBrowseUrl: '<?php echo Yii::app()->request->baseUrl ?>/imgbrowser.php'
            });
    CKFinder.setupCKEditor(editor, '<?php echo Yii::app()->request->baseUrl ?>/ckfinder/');

    var finder = new CKFinder();
    finder.basePath = '<?php echo Yii::app()->request->baseUrl ?>/ckfinder/';
    //finder.popup();
</script>