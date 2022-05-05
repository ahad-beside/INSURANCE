<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'products-form',
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



   
    <!-- Tab panes -->
    <div class="tab-content">
        <div id="general" class="tab-pane fade active in">
            <div class="form-group">
               <?php echo $form->labelEx($model, 'country_category'); ?>
                <?php echo $form->dropDownList($model, 'country_category', CHtml::listData(CountryCategory::model()->findAll(),'name','name'), array('class' => 'form-control','prompt'=>'Select Any')); ?>
                <?php echo $form->error($model, 'country_category'); ?>
            </div>
            <div class="form-group">
                <?php echo CHtml::label('Company', 'categories'); ?>
                <?php echo CHtml::dropDownList('categories[]', $data['selectedCategory'], Category::model()->dropDown(), array('class' => 'form-control chosen-select',  'empty' => 'Select Any')); ?>
            </div>
            
            <div class="form-group">
                <?php echo $form->labelEx($model, 'amount'); ?>
                <?php echo $form->dropDownList($model, 'amount', array(
                            '250000' => '$250,000',
			    '500000' => '$500,000',
                            '1000000'=>'$1,000,000',
                            '2000000'=>'$2,000,000',
                            '3000000'=>'$3,000,000',

                        ), array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'amount'); ?>
            </div>

            <div class="form-group">
                <?php echo $form->labelEx($model, 'type'); ?>
                <?php echo $form->dropDownList($model, 'type', array(
                            '10 Years Level Term'=>'10 Years Level Term',
                            '20 Years Level Term'=>'20 Years Level Term',
                            '30 Years Level Term'=>'30 Years Level Term',
                        ), array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'type'); ?>
            </div>
            

            <div class="form-group row">
				<div class='col-md-3'>
                <?php echo $form->labelEx($model, 'age_start'); ?>
                <?php echo $form->textField($model, 'age_start', array('size' => 60, 'maxlength' => 255, 'class' => 'form-control')); ?>
                <?php echo $form->error($model, 'age_start'); ?>
				</div>
				<div class='col-md-3'>
                <?php echo $form->labelEx($model, 'age_end'); ?>
                <?php echo $form->textField($model, 'age_end', array('size' => 60, 'maxlength' => 255, 'class' => 'form-control')); ?>
                <?php echo $form->error($model, 'age_end'); ?>
				</div>
                <div class='col-md-3'>
                <?php echo $form->labelEx($model, 'flat_rate'); ?>
                <?php echo $form->textField($model, 'flat_rate', array('size' => 60, 'maxlength' => 255, 'class' => 'form-control')); ?>
                <?php echo $form->error($model, 'flat_rate'); ?>
                </div>
                <div class='col-md-3'>
                <?php echo $form->labelEx($model, 'year'); ?>
                <?php echo $form->textField($model, 'year', array('size' => 60, 'maxlength' => 255, 'class' => 'form-control')); ?>
                <?php echo $form->error($model, 'year'); ?>
                </div>
            </div>

            <div class="form-group">
                <?php echo $form->labelEx($model, 'gender'); ?>
                <?php echo $form->dropDownList($model, 'gender', array(
                            'Male'=>'Male',
                            'Female'=>'Female',
                        ), array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'gender'); ?>
            </div>

       

            <div class="form-group">
                <?php echo $form->labelEx($model, 'smoker'); ?>
                <?php echo $form->dropDownList($model, 'smoker', array(
                            'No'=>'No',
                            'Yes'=>'Yes',
                        ), array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'smoker'); ?>
            </div>

			  <div class="form-group">
                <?php echo $form->labelEx($model, 'health'); ?>
                <?php echo $form->dropDownList($model, 'health', array(
                            'Proffered Plus'=>'Proffered Plus',
                        ), array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'health'); ?>
            </div>
			
            <div class="form-group">
                <?php echo $form->labelEx($model, 'annual_rate'); ?>
                <?php echo $form->textField($model, 'annual_rate',  array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'annual_rate'); ?>
            </div>

          
        </div>
        

        </div>
    </div>


    <div class="form-group buttons" style="">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->

