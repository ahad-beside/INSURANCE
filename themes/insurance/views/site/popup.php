
<div class="content">
          

<table width="100%" style="text-align:center;" >	<tr>

<td>
	<div >
<div>
<h6>To proceed with your application form, a telephone introduction is mandatory so we may verify your life insurance need</h6>
</div>
<div class="clearfix">&nbsp;</div>
<form action="<?php echo Yii::app()->createUrl('//site/request', array('re'=>'recal',  'name'=>$name, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob)); ?>" method="post">
          
		<div class="coffee-span-12 > <span class="text-element text-results-title">Tel. Number (with country code):</span>
             <input name="telephone"  type="text">
        </div>
        <div class="coffee-span-12 > <span class="text-element text-results-title">Best time to call: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
             <input name="call"  type="text">
        </div>
         <div class="coffee-span-12" style="text-align:center; padding-left:240px;">
            <button name='submit' type="submit" class="button-submit-3">Submit</button>
		</div>
	</form>
 </div>
 </td>

 </tr></table>       

</div>