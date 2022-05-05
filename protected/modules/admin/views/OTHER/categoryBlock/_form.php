<?php
/* @var $this CategoryBlockController */
/* @var $model CategoryBlock */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'category-block-form',
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
        <?php echo $form->labelEx($model, 'category_id'); ?>
        <?php echo $form->dropDownList($model, 'category_id', Category::model()->dropDown(), array('empty' => 'Select Any', 'class' => 'form-control chosen-select')); ?>
        <?php echo $form->error($model, 'category_id'); ?>
    </div>
    
    <div class="form-group">
        <?php echo $form->labelEx($model, 'layout'); ?>
        <?php echo $form->dropDownList($model, 'layout', array('1'=>'Layout 1','2'=>'Layout 2',), array('class' => 'form-control chosen-select')); ?>
        <?php echo $form->error($model, 'layout'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'sub_title'); ?>
        <?php echo $form->textField($model, 'sub_title', array('size' => 50, 'maxlength' => 50, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'sub_title'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'sub_categorires'); ?>
        <?php echo $form->dropDownList($model, 'sub_categorires', array(), array('class' => 'form-control chosen-select', 'multiple' => 'multiple')); ?>
        <?php echo $form->error($model, 'sub_categorires'); ?>
    </div>
    
    <div id="append_sub_cat" style="border-left:solid 1px #efefef; padding: 10px;">
        
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'first_image'); ?>
        <?php echo $form->fileField($model, 'first_image', array('class' => '')); ?>
        <?php echo $form->error($model, 'first_image'); ?>
        <?php echo Yii::app()->easycode->showImage($model->first_image, 120, 100); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'firstlink'); ?>
        <?php echo $form->textField($model, 'firstlink', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'firstlink'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'second_image'); ?>
        <?php echo $form->fileField($model, 'second_image', array('class' => '')); ?>
        <?php echo $form->error($model, 'second_image'); ?>
        <?php echo Yii::app()->easycode->showImage($model->second_image, 120, 100); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'secondlink'); ?>
        <?php echo $form->textField($model, 'secondlink', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'secondlink'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'third_image'); ?>
        <?php echo $form->fileField($model, 'third_image', array('class' => '')); ?>
        <?php echo $form->error($model, 'third_image'); ?>
        <?php echo Yii::app()->easycode->showImage($model->third_image, 120, 100); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'thirdlink'); ?>
        <?php echo $form->textField($model, 'thirdlink', array('size' => 50, 'maxlength' => 100, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'thirdlink'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'sort_order'); ?>
        <?php echo $form->textField($model, 'sort_order', array('size' => 50, 'maxlength' => 11, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'sort_order'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'status'); ?>
        <?php echo $form->dropDownList($model, 'status', Yii::app()->easycode->loadStatusDropdownOptions(), array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'status'); ?>
    </div>


    <div class="form-group">
        <?php echo $form->labelEx($model, 'best_seller'); ?>
        <?php echo $form->checkBox($model, 'best_seller'); ?>
        <?php echo $form->error($model, 'best_seller'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'new_arrival'); ?>
        <?php echo $form->checkBox($model, 'new_arrival'); ?>
        <?php echo $form->error($model, 'new_arrival'); ?>
    </div>



    <div class="form-group">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->

<script type="text/javascript">
        $('body').on('change', '#CategoryBlock_sub_categorires', function(){
            var values = $(this).chosen().val();
            loadLayout2Data(values);
        });
        
        <?php if(!$model->isNewRecord){?>
            var values = "<?php echo $model->sub_categorires?>";
            loadLayout2Data(values);
        <?php }?>
        
        function loadLayout2Data(values){
            $.post('<?php echo $this->createUrl('getSubCategoriesSub')?>',{catid: values},function(data){
                $('#append_sub_cat').html(data);
            });
        }
    </script>

<script>
    $('#CategoryBlock_category_id').change(function () {

        $.post('<?php echo Yii::app()->createUrl('//admin/categoryBlock/getSubCategory') ?>', {parentId: $(this).val(), parentName: $('#CategoryBlock_category_id option:selected').text()}, function (data) {
            $('#CategoryBlock_sub_categorires').html(data);
            $('#CategoryBlock_sub_categorires').trigger("chosen:updated");
        });
    });


<?php if (!$model->isNewRecord or $model->hasErrors()) { ?>
        $.post('<?php echo Yii::app()->createUrl('//admin/categoryBlock/getSubCategory') ?>', {parentId: <?php echo $model->category_id ?>, parentName: $('#CategoryBlock_category_id option:selected').text(), sel: '<?php echo $model->sub_categorires ?>'}, function (data) {
            $('#CategoryBlock_sub_categorires').html(data);
            $('#CategoryBlock_sub_categorires').trigger("chosen:updated");
        });
<?php } ?>


</script>