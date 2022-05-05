<?php
if(isset($_POST['submit'])){
		
		$name= $_POST['name'];
		$birthMonth= $_POST['birthMonth'];
		$birthDay= $_POST['birthDay'];
		$birthYear= $_POST['birthYear'];
		$dob= $birthDay."/".$birthMonth."/".$birthYear;
		
		
		$gender= $_POST['sex'];
		$smoker= $_POST['smoker'];
		$type= $_POST['type'];
		$amount= $_POST['amount'];
		$health= $_POST['health'];
		$citizenship= $_POST['citizenship'];
		$residence= $_POST['residence'];
		$email= $_POST['email'];
		$name= $_POST['name'];
		//echo $type; exit(); 
		$today=date('d/m/Y');
		echo $age = $today - $dob;
}
?>

<div class="row row-result-1">
  <div class="coffee-span-12 column-6"></div>
</div>
<div class="row row-3">
  <div class="coffee-span-12 column-results">
    <div class="container container-1">
      <div class="subgrid subgrid-1">
        <div class="row subgrid-row-1 "><span class="text-element text-result-list"> <strong>Name:</strong> <?php  echo $name; ?>  | <strong>Email:</strong> <?php  echo $email; ?>   | <strong>Phone:</strong> <?php  echo $phone; ?>   | <strong>Birthdate:</strong> <?php  echo date('d/m/Y', strtotime($dob)); ?>   | <strong>Age:</strong> <?php  echo $age; ?><br>
          <br>
          <strong>Gender:</strong> <?php  echo $gender; ?>  | <strong>Smoker/ Tobacco:</strong> <?php  echo $smoker; ?>   | <strong>Citizen:</strong> <?php  echo $citizenship; ?>  | <strong>Residence:</strong> <?php  echo $residence; ?> </span></div>
        <div class="row subgrid-row-2">
          <form action="" method="POST">
            <div class="coffee-span-12 subgrid-column-9 coffee-545-span-4"> <span class="text-element text-results-title">Amount of Insurance:</span>
              <select id="FaceSel" class="select drop-down-results" name="amount">
                <option value="1000000" <?php if($amount==1000000) echo 'selected="selected"' ?>>$1,000,000</option>
                <option value="2000000" <?php if($amount==2000000) echo 'selected="selected"' ?>>$2,000,000</option>
                <option value="3000000" <?php if($amount==3000000) echo 'selected="selected"' ?>>$3,000,000</option>
              </select>
            </div>
            <div class="coffee-span-12 coffee-545-span-4 subgrid-column-8"> <span class="text-element text-results-title">Type of Insurance:</span>
              <select id="NewCatSel" class="select drop-down-results" name="type">
                <option value="30-35 Year Level Term" <?php if($type=="30-35 Year Level Term") echo 'selected="selected"' ?>>30-35 Year Level Term</option>
                <option value="36-40 Year Level Term" <?php if($type=="36-40 Year Level Term") echo 'selected="selected"' ?>>36-40 Year Level Term</option>
                <option value="41-45 Year Level Term" <?php if($type=="41-45 Year Level Term") echo 'selected="selected"' ?>>41-45 Year Level Term</option>
                <option value="46-50 Year Level Term" <?php if($type=="46-50 Year Level Term") echo 'selected="selected"' ?>>46-50 Year Level Term</option>
                <option value="51-55 Year Level Term" <?php if($type=="51-55 Year Level Term") echo 'selected="selected"' ?>>51-55 Year Level Term</option>
                <option value="56-60 Year Level Term" <?php if($type=="56-60 Year Level Term") echo 'selected="selected"' ?>>56-60 Year Level Term</option>
                <option value="61-65 Year Level Term" <?php if($type=="61-65 Year Level Term") echo 'selected="selected"' ?>>61-65 Year Level Term</option>
              </select>
            </div>
            <div class="coffee-span-12 coffee-545-span-4 subgrid-column-recalc" style="text-align:center; padding-top:10px;">
            <button type="submit" class="button-submit-3">Recalculate</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row row-8">
<div class="coffee-span-12 column-results">
<div class="container container-results">
<div class="subgrid subgrid-1">
<?php
$sql=Products::model()->findAll(array(
'condition'=>'gender=:gender and type=:type and smoker=:smoker and amount=:amount',
'params'=>array(':gender'=>$gender, ':type'=>$type, ':smoker'=>$smoker, ':amount'=>$amount),
));

if (count($sql)>0){
foreach($sql as $q):
?>
  <div class="row subgrid-row-3">
    <div class="coffee-span-6 subgrid-column-results coffee-545-span-3"> 
	<?php $pc=ProductsCategory::model()->find(array(
	'condition'=>'product_id=:product_id',
	'params'=>array(':product_id'=>$q->id),
	)); 
	
	echo Category::model()->findByPk($pc->category_id)->name;
	?></div>
    <div class="coffee-span-6 subgrid-column-results2 coffee-545-span-4"> <span class="text-element text-premium"><font style="color: #222222;"><b><?php echo $q->annual_rate; ?></b></font><span class="text-text-9"> Annually</span> </span></div>
    <div class="coffee-span-2 coffee-545-span-5 subgrid-column-24">
      <button type="submit" name="Request Application" class="button-request-app" value="Request Application">Request Application</button>
    </div>
  </div>
  <?php  
  endforeach;
  } ?>
 
  
  <div class="row">
    <div class="coffee-span-12 subgrid-column-14 coffee-545-span-12"> <span class="text-element text-result-list">Ohio National Life Assurance Corporation</span> <span class="text-element text-results-right-AMB"><font color="#222222"><b>A+</b></font></span> <span class="text-element text-amb">A.M. Best Rating:&nbsp;<font color="#222222"><b>A+</b></font><br>
      </span> </div>
  </div>
  <div class="row">
    <div class="coffee-span-12 subgrid-column-13"> <span class="text-element text-result-list-right-health">Super Preferred Non-Smoker    &nbsp;<font color="#D50000">P+</font></span> <span class="text-element text-results-right-pp"><font color="#D50000">P+</font></span></div>
  </div>
</div>

