<?php
if(isset($_POST['submit'])){

		$name= $_REQUEST['name'];
		$birthMonth= $_REQUEST['birthMonth'];
		$birthDay= $_REQUEST['birthDay'];
		$birthYear= $_REQUEST['birthYear'];
		$dob= $birthDay."/".$birthMonth."/".$birthYear;
		
		$gender= $_REQUEST['sex'];
		$smoker= $_REQUEST['smoker'];
		$type= $_REQUEST['type'];
		$amount= $_REQUEST['amount'];
		$health= $_REQUEST['health'];
		$citizenship= $_REQUEST['citizenship'];
		$residence= $_REQUEST['residence']; 
		$email= $_REQUEST['email'];
		$phone= $_REQUEST['phone'];

	    $today=date('Y');
	   $pdob=date('Y', strtotime($birthYear));
	  // $age = $today - $pdob;
	   $age = $today - $birthYear;
	   $age=(int)$age;
	  
}
else{
$gender="Male";
$smoker="No";
}

$month=array(1=>'January', 2=>'February', 3=>'March', 4=>'April', 5=>'May', 6=>'June', 7=>'July', 8=>'August', 9=>'September', 10=>'October', 11=>'November', 12=>'December');

?>
<div class="row">
  <div class="coffee-span-12 column-5"></div>
</div>
<div class="row row-5">
  <div class="coffee-span-12 column-6"></div>
</div>
<div class="row row-top-spacer">
  <div class="coffee-span-12 column-top-spacer"></div>
</div>
<div class="row row-4">
  <div class="coffee-span-12 column-4">
    <h2 class="heading-2"> <font size="3"><span class="heading-text-7">Instant Life Insurance Quote</span> </font> </h2>
  </div>
</div>
<div class="row row-2">
  <div class="coffee-span-12 column-1"></div>
</div>
<div class="row row-1">
  <div class="coffee-span-12 column-2">
  
  
    <form action="<?php echo Yii::app()->createUrl('//site/result'); ?>" method="POST" >
      <span class="text-element text-1">Birthdate</span>
      <select class="select drop-down-2" name="birthMonth">
       <?php  
	   foreach($month as $k=>$m):
	   ?>
	    <option value="<?php  echo $k; ?>"  <?php if($birthMonth==$k) echo 'selected="selected"' ?>><?php  echo $m; ?></option>
	   <?php  endforeach; ?> 
	   
      </select>
      <select class="select drop-down-2" name="birthDay">
        <?php
	  	for ($i=1;$i<=31;$i++){ 
	  ?>
        <option value="<?php echo $i ?>" <?php if($birthDay==$i) echo 'selected="selected"' ?>><?php echo $i ?></option>
        <?php } ?>
      </select>
      <select class="select drop-down-2" name="birthYear">
        <?php
	  	for ($i=1950;$i<=date('Y');$i++){ 
	  ?>
        <option  value="<?php echo $i ?>" <?php if($birthYear==$i) echo 'selected="selected"' ?>><?php echo $i ?></option>
        <?php } ?>
      </select>
      <span class="text-element text-1">Gender</span>
      <label class="radio radio-button-1">
        <input type="radio" name="sex" <?php if($gender=="Male"){  ?> checked <?php } ?> value="Male">
        <span>Male</span></label>
      <label class="radio radio-button-1-right">
        <input type="radio" name="sex" <?php if($gender=="Female"){  ?> checked <?php } ?> value="Female">
        <span>Female</span></label>
      <span class="text-element text-1">Smoker / Tobacco</span>
      <label class="radio radio-button-1">
        <input type="radio" name="smoker"  <?php if($smoker=="No"){  ?> checked <?php } ?> value="No">
        <span>No</span></label>
      <label class="radio radio-button-1-right">
        <input type="radio" name="smoker"  <?php if($smoker=="Yes"){  ?> checked <?php } ?> value="Yes">
        <span>Yes</span></label>
      <span class="text-element text-1">Type of Insurance<br>
      </span>
      <select class="select drop-down-1" name="type">
        <option value="10 Years Level Term" <?php if($type=="10 Years Level Term") echo 'selected="selected"' ?>>10 Years Level Term</option>
        <option value="20 Years Level Term" <?php if($type=="20 Years Level Term") echo 'selected="selected"' ?>>20 Years Level Term</option>
        <option value="30 Years Level Term" <?php if($type=="30 Years Level Term") echo 'selected="selected"' ?>>30 Years Level Term</option>
      </select>
      <span class="text-element text-1"><span class="text-text-1">Amount of Insurance</span> </span>
      <select class="select drop-down-1" name="amount">
		<option value="250000" <?php if($amount==250000) echo 'selected="selected"' ?>>$ 250,000</option>
        <option value="500000" <?php if($amount==500000) echo 'selected="selected"' ?>>$ 500,000</option>
        <option value="1000000" <?php if($amount==1000000) echo 'selected="selected"' ?>>$ 1,000,000</option>
        <option value="2000000" <?php if($amount==2000000) echo 'selected="selected"' ?>>$ 2,000,000</option>
        <option value="3000000" <?php if($amount==3000000) echo 'selected="selected"' ?>>$ 3,000,000</option>
      </select>
      <span hidden="" class="text-element text-1"><br>
      </span>
      <select hidden="" class="select drop-down-1" name="health">
        <option hidden="" selected="" value="Proffered Plus">Proffered Plus</option>
      </select>
      <span class="text-element text-1">Country of Citizenship<br>
      </span>
      <select class="select drop-down-1" name="citizenship">
        <?php 
          $countryName=Country::model()->findAll();
          foreach($countryName as $rowCountry):
        ?>
        <option value="<?=$rowCountry->name?>" <?php if($citizenship==$rowCountry->name) echo 'selected="selected"' ?>><?=$rowCountry->name?></option>
      <?php endforeach;?>
        

      </select>
      <span class="text-element text-1">Country of current Residence<br>
      </span>
      <select class="select drop-down-1" name="residence">
        <?php 
          $countryName=Country::model()->findAll();
          foreach($countryName as $rowCountry):
        ?>
        <option value="<?=$rowCountry->name?>" <?php if($residence==$rowCountry->name) echo 'selected="selected"' ?>><?=$rowCountry->name?></option>
      <?php endforeach;?>
        
      </select>
      <br>
      <span class="text-element text-1">Name:</span>
      <input name="name" type="text" value="<?php echo $name; ?>"  required>
      <span class="text-element text-1">Email:</span>
      <input name="email" type="email" value="<?php echo $email; ?>"  required>
      <span class="text-element text-1">Phone:</span>
      <input name="phone" type="text" value="<?php echo $phone; ?>">
      <button type="submit" name="submit" class="button-submit-1">Compare Now</button>
    </form>
  </div>
</div>
<br>
<style type="text/css">
  span.text-element.text-1{
    color: #666!important;
  }
</style>