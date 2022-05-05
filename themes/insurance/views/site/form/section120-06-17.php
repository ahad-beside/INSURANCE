Thank you for applying for low-cost, maximum benefit Level-Term Life Insurance. Your Security is of the utmost importance. Therefore, your personal data entered on this secure form below, is sent directly to a real person and not to any database. Your data is totally secure and will NEVER be shared nor exported. Each application form is individually reviewed by an experienced underwriter who you may speak with directly in English. You will receive an email confirmation upon submission and review of your application form

<div  style="text-align:left!important; border-radius: 15px 50px 50px 5px; background-color:#e7be9e; height: 50px; padding:5px 5px 5px 5px">
	<h4>SECTION I - About the proposed coverage<h4>
</div>
	<table class="test">
		<tr>
		  <td width="35%"><label>Face Amount</label><div class="form-group"><?php echo CHtml::dropDownList('Section1Face', $amount , array('250000'=>'$250,000', '500000'=>'$500,000', '1000000'=>'$1,000,000', '2000000'=>'$2,000,000', '3000000'=>'$3,000,000')); ?></td>
		  <td width="35%"><label>Length of coverage</label><div class="form-group"><?php echo CHtml::dropDownList('Section1Length', $type , array('10 Years Level Term'=>'10 Years Level Term', '20 Years Level Term'=>'20 Years Level Term', '30 Years Level Term'=>'30 Years Level Term')); ?></td>
			<td width="30%"><label>Proposed Annual Cost</label><div class="form-group"><input type="text" name="section1AnnualRate" value="<?php echo $annualRate; ?>"></div></td>
	 </tr>
	</table>