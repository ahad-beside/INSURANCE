<!-- Before completing this on line application form, please be sure you meet the following Requirements:
1. You have a functioning U.S. Mailing Address.
2. You will visit or reside in the U.S. within the next 4 months for all necessary medical exams, documents and signatures.

3. You reside in the U.S. for more than half of the year.
<br>
Thank you for applying for low-cost, maximum benefit Level-Term Life Insurance. Your Security is of the utmost importance. Therefore, your personal data entered on this secure form below, is sent directly to a real person and not to any database. Your data is totally secure and will NEVER be shared nor exported. Each application form is individually reviewed by an experienced underwriter who you may speak with directly in English. You will receive an email confirmation upon submission and review of your application form -->






<div class="bodyP"><?=$companyDescription;?></div>
<div  style="text-align:left!important; border-radius: 15px 50px 50px 5px; background-color:#e7be9e; height: 50px; padding:5px 5px 5px 5px">
	<h4>SECTION I - About the proposed coverage<h4>
    
</div>













<div class="row"
<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Example label</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Another label</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input">
  </div>
</form>
</div>








<?php 
if(isset($_GET['annualRate']) && $_GET['annualRate']!='')
	$annualRate=$_GET['annualRate'];
else
	$annualRate=$annualRate;

?>
	<table class="test">
		<tr>
		  <td width="35%"><label>Face Amount</label><div class="form-group"><?php echo CHtml::dropDownList('Section1Face', $amount , array('250000'=>'$ 250,000.', '500000'=>'$ 500,000.', '1000000'=>'$ 1,000,000.', '2000000'=>'$ 2,000,000.', '3000000'=>'$ 3,000,000.')); ?></td>
		  <td width="35%"><label>Length of coverage</label><div class="form-group"><?php echo CHtml::dropDownList('Section1Length', $type , array('10 Years Level Term'=>'10 Years Level Term', '20 Years Level Term'=>'20 Years Level Term', '30 Years Level Term'=>'30 Years Level Term')); ?></td>
			<td width="30%"><label>Proposed Annual Cost</label><div class="form-group"><input type="text" name="section1AnnualRate" value="<?php echo "$ ".number_format($annualRate)."."; ?>"></div></td>
	 </tr>
	</table>
	<style type="text/css">
		.bodyP p{
			font-size: 14px!important;
		}
	</style>