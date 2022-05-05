<?php
/**
 * @var HOAuthAction $this
 * @var HUserInfoForm $form
 */

//echo $form->form;
echo "<script>window.opener.location.href = '".Yii::app()->createUrl('//site/login',array('from'=>oauth))."'; window.close();</script>";
