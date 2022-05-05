<?php
/* @var $this CategoryController */
/* @var $model Category */
/* @var $form CActiveForm */
?>



<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'option-form',
    'enableAjaxValidation' => false,
    'htmlOptions' => array('enctype' => 'multipart/form-data'),
        ));
?>

<p class="note">Fields with <span class="required">*</span> are required.</p>

<?php echo Yii::app()->easycode->showNotification(); ?>

<div class="form-group">
    <?php echo $form->labelEx($optionModel, 'name'); ?>
    <?php echo $form->textField($optionModel, 'name', array('class' => 'form-control')); ?>
    <?php echo $form->error($optionModel, 'name'); ?>
</div>

<div class="form-group">
    <?php echo $form->labelEx($optionModel, 'type'); ?>
    <?php echo $form->dropDownList($optionModel, 'type', Option::model()->getOptionTypes(), array('class' => 'form-control')); ?>
    <?php echo $form->error($optionModel, 'type'); ?>
</div>

<div class="form-group">
    <?php echo $form->labelEx($optionModel, 'sort_order'); ?>
    <?php echo $form->textField($optionModel, 'sort_order', array('class' => 'form-control')); ?>
    <?php echo $form->error($optionModel, 'sort_order'); ?>
</div>

<div class="form-group">
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>Option Value name</th>
                    <th>Image</th>
                    <th>Sort Order</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody id="optionItemBox">
                <?php
                $showSingleRow = 0;
                if ($this->action->id == 'update') {
                    if (count($itemsModel) > 0) {

                        foreach ($itemsModel as $optionItem):
                            ?>
                            <tr>
                                <td><?php echo CHtml::textField('OptionItem[name][]', $optionItem->name, array('class' => 'form-control', 'placeholder' => 'Type option value name')) ?></td>
                                <td>
                                    <?php echo Yii::app()->easycode->showImage($optionItem->image, 120, 100);?>
                                    <br>
                                    <?php echo CHtml::fileField('OptionItem[image][]') ?>
                                </td>
                                <td>
                                    <?php echo CHtml::textField('OptionItem[sort_order][]', $optionItem->sort_order, array('class' => 'form-control')) ?>
                                    <?php echo CHtml::hiddenField('OptionItem[id][]', $optionItem->id) ?>
                                </td>
                                <td><div class="btn btn-danger del-item-db" data-id="<?php echo $optionItem->id ?>" title="Delete"><i class="fa fa-minus"></i></div></td>
                            </tr>
                            <?php
                        endforeach;
                    } else {
                        $showSingleRow = 1;
                    }
                } else {
                    $showSingleRow = 1;
                }

                if ($showSingleRow == 1) {
                    ?>
                    <tr>
                        <td><?php echo CHtml::textField('OptionItem[name][]', '', array('class' => 'form-control', 'placeholder' => 'Type option value name')) ?></td>
                        <td><?php echo CHtml::fileField('OptionItem[image][]') ?></td>
                        <td><?php echo CHtml::textField('OptionItem[sort_order][]', '', array('class' => 'form-control')) ?></td>
                        <td><div class="btn btn-danger del-item" title="Delete"><i class="fa fa-minus"></i></div></td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td><div class="btn btn-primary" id="addMoreItem" title="Add More Items"><i class="fa fa-plus"></i></div></td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>

<div class="form-group buttons">
    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<script>
    function appendOptionBox() {
        var item = '<tr><td><?php echo CHtml::textField('OptionItem[name][]', '', array('class' => 'form-control', 'placeholder' => 'Type option value name')) ?></td><td><?php echo CHtml::fileField('OptionItem[image][]') ?></td><td><?php echo CHtml::textField('OptionItem[sort_order][]', '', array('class' => 'form-control')) ?></td><td><div class="btn btn-danger del-item" title="Delete"><i class="fa fa-minus"></i></div></td></tr>';
        $('#optionItemBox').append(item);
    }
    $('body').on('click', '#addMoreItem', function () {
        appendOptionBox();
    });

    $('body').on('click', '.del-item', function () {
        $(this).parent().parent().remove();
    });

    $('body').on('click', '.del-item-db', function () {
        $this = $(this);
        if (confirm('Are you sure to detele?')) {
            var dataId = $this.attr('data-id');
            if (dataId.trim() !== '') {
                
                $.post("<?php echo Yii::app()->createUrl('//admin/option/delItems') ?>", {delId: dataId}, function (data) {
                    if(data=='1'){
                        $this.parent().parent().remove();
                    }
                });
            }
        }
        
    });
</script>