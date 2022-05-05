<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle =  'Login - '.Yii::app()->name;
$this->breadcrumbs = array(
    'Login',
);
?>

<div class="form">
    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'login-form',
        'action'=>Yii::app()->createUrl('//site/login'),
        'enableClientValidation' => true,
        'clientOptions' => array(
            'validateOnSubmit' => true,
        ),
        'htmlOptions' => array('role' => 'form')
    ));
    ?>


    <div class="form-group" style="text-align: center;">
        <img src="<?php echo Yii::app()->request->baseUrl . Yii::app()->params->companyLogo ?>" height="100">
    </div>

    <p class="note">Fields with <span class="required">*</span> are required.</p>
    
    <?php
    if($_GET['email'] && trim($_GET['email'])!=''){
        echo '<p style="color:red">This email address already registerd with us, please try to login your password</p>';
    }
    ?>

    <div class="form-group">
        <?php //echo $form->labelEx($model,'username'); ?>
        <?php echo $form->textField($model, 'username', array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'username'); ?>
    </div>

    <div class="form-group">
        <?php //echo $form->labelEx($model,'password'); ?>
        <?php echo $form->passwordField($model, 'password', array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'password'); ?>
    </div>

    <div class="form-group rememberMe">
        <?php echo $form->checkBox($model, 'rememberMe'); ?>
        <?php echo $form->label($model, 'rememberMe'); ?>
        <?php echo $form->error($model, 'rememberMe'); ?>
    </div>

    <div class="form-group buttons">
    <?php echo CHtml::submitButton('Login', array('class' => 'btn btn-lg btn-success btn-block')); ?>
    </div>

<?php $this->endWidget(); ?>
    
</div><!-- form -->
