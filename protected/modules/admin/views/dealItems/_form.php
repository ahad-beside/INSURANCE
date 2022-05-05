<?php
/* @var $this DealController */
/* @var $model Deal */
/* @var $form CActiveForm */
?>

<div class="form col-md-12">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'deal-items-form',
        'action'=>$_SERVER['REQUEST_URI'],
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <table class="table table-striped">
        <tr>
            <td style="width: 20%">
                <div class="form-group">
                    <?php echo $form->labelEx($model, 'title'); ?>
                    <?php echo $form->textField($model, 'title', array('size' => 60, 'maxlength' => 100, 'class' => 'form-control')); ?>
                    <?php echo $form->error($model, 'title'); ?>
                </div>
            </td>
            <td style="width: 20%">
                <div class="form-group">
                    <?php echo $form->labelEx($model, 'sub_title'); ?>
                    <?php echo $form->textField($model, 'sub_title', array('size' => 60, 'maxlength' => 100, 'class' => 'form-control')); ?>
                    <?php echo $form->error($model, 'sub_title'); ?>
                </div>
            </td>
            <td style="width: 20%">
                <div class="form-group">
                    <?php echo $form->labelEx($model, 'type'); ?>
                    <?php echo $form->dropDownList($model, 'type', array('category' => 'Category', 'product' => 'Product'), array('class' => 'form-control', 'onChange' => 'showParticular($(this).val());')); ?>
                    <?php echo $form->error($model, 'type'); ?>
                </div>

            </td>
            <td style="width: 35%">
                <div class="form-group category_box">
                    <label for="DealItems">Category</label><br>
                    <?php echo CHtml::dropDownList('category', $model->additional_id, Category::model()->dropDown(), array('class' => 'form-control chosen-select')); ?>
                </div>
                <div class="form-group product_box" style="display: none;">
                    <label for="DealItems">Product</label><br>
                    <?php echo CHtml::dropDownList('product', $model->additional_id, Products::model()->dropDown(), array('class' => 'form-control chosen-select')); ?>
                </div>
                <div class="form-group">
                    <?php echo $form->hiddenField($model, 'additional_id', array('class' => 'form-control')); ?>
                    <?php echo $form->error($model, 'additional_id'); ?>
                </div>

            </td>
            <td style="vertical-align: middle; width: 5%">
                <div>
                    <?php echo $form->hiddenField($model, 'deal_id', array('class' => 'form-control')); ?>
                    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
                </div>
            </td>
        </tr>
    </table>






    <?php $this->endWidget(); ?>

</div><!-- form -->

<script>
    function showParticular(val) {
        if (val == 'product') {
            $('.product_box').show();
            $('#product_chosen').css('width', '100%');
            $('.category_box').hide();
            
            setAdditionalVal($('.product_box').find('select option:first').val());
        } else {
            $('.product_box').hide();
            $('.category_box').show();
            $('#category_chosen').css('width', '100%');
            setAdditionalVal($('.category_box').find('select option:first').val());
        }
    }
    
    $('#category').change(function(){
        alert($(this).val());
        setAdditionalVal($(this).val());
    });
    $('#product').change(function(){
        setAdditionalVal($(this).val());
    });
    
    function setAdditionalVal(val){
        $('#DealItems_additional_id').val(val);
    }
    
    $(document).ready(function(){
       setAdditionalVal($('.category_box').find('select option:first').val()); 
    });
</script>

<style>
    .chosen-container-single .chosen-single{height: 34px!important; line-height: 34px!important;}
    .chosen-container-single .chosen-single div b{background-position: 0px 8px!important;}
</style>