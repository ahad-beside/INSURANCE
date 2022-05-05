
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

    <form action="<?php echo Yii::app()->createUrl('//site/result'); ?>" method="POST" id='myform'>  
      <span class="text-element text-1">Birthdate</span>
      <select class="select drop-down-2" name="birthMonth">
        <option value="1" selected>January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
      </select>
      <select class="select drop-down-2" name="birthDay">
        <?php
	  	for ($i=1;$i<=31;$i++){ 
	  ?>
        <option><?php echo $i ?></option>
        <?php } ?>
      </select>
      <select class="select drop-down-2" name="birthYear">
        <?php
	  	for ($i=1900;$i<=date('Y');$i++){ 
	  ?>
        <option><?php echo $i ?></option>
        <?php } ?>
      </select>
      <span class="text-element text-1">Gender</span>
      <label class="radio radio-button-1">
        <input type="radio" name="sex" checked value="Male">
        <span>Male</span></label>
      <label class="radio radio-button-1-right">
        <input type="radio" name="sex" value="Femail">
        <span>Female</span></label>
      <span class="text-element text-1">Smoker / Tobacco</span>
      <label class="radio radio-button-1">
        <input type="radio" name="smoker" checked value="No">
        <span>No</span></label>
      <label class="radio radio-button-1-right">
        <input type="radio" name="smoker" value="Yes">
        <span>Yes</span></label>
      <span class="text-element text-1">Type of Insurance<br>
      </span>
      <select class="select drop-down-1" name="type">
        <option value="30-35 Year Level Term">30-35 Year Level Term</option>
        <option value="36-40 Year Level Term">36-40 Year Level Term</option>
        <option value="41-45 Year Level Term">41-45 Year Level Term</option>
        <option value="46-50 Year Level Term">46-50 Year Level Term</option>
        <option value="51-55 Year Level Term">51-55 Year Level Term</option>
        <option value="56-60 Year Level Term">56-60 Year Level Term</option>
        <option value="61-65 Year Level Term">61-65 Year Level Term</option>
      </select>
      <span class="text-element text-1"><span class="text-text-1">Amount of Insurance</span> </span>
      <select class="select drop-down-1" name="amount">
        <option value="1000000">$1,000,000</option>
        <option value="2000000">$2,000,000</option>
        <option value="3000000">$3,000,000</option>
      </select>
      <span hidden="" class="text-element text-1"><br>
      </span>
      <select hidden="" class="select drop-down-1" name="health">
        <option hidden="" selected="" value="Proffered Plus">Proffered Plus</option>
      </select>
      <span class="text-element text-1">Country of Citizenship<br>
      </span>
      <select class="select drop-down-1" name="citizenship">
        <option>USA</option>
        <option>UK</option>
        <option>CANADA</option>
      </select>
      <span class="text-element text-1">Country of current Residence<br>
      </span>
      <select class="select drop-down-1" name="residence">
        <option>USA</option>
        <option>UK</option>
        <option>CANADA</option>
      </select>
      <br>
      <span class="text-element text-1">Name:</span>
      <input name="name" type="text">
      <span class="text-element text-1">Email:</span>
      <input name="email" type="email">
      <span class="text-element text-1">Phone:</span>
      <input name="phone" type="text">
      <button type="submit" name="submit" class="button-submit-1">Compare Now</button>
    </form>
  </div>
</div>
<br>

<script>
// just for the demos, avoids form submit
jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});
$( "#myform" ).validate({
  rules: {
    field: {
      required: true
    }
  }
});
</script>
