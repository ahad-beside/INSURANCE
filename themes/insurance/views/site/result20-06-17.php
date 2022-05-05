<style>
.grid-1{
    background-image: url("<?php echo Yii::app()->theme->baseUrl ?>/assets/images/bg2.jpg");
}
</style>
<?php
/* if(isset($_POST['submit'])){

		$name= $_REQUEST['name'];
		$birthMonth= $_REQUEST['birthMonth'];
		$birthDay= $_REQUEST['birthDay'];
		$birthYear= $_REQUEST['birthYear'];
		$dob= $birthMonth."/".$birthDay."/".$birthYear;
		
		$gender= $_REQUEST['sex'];
		//echo $gender;
		$smoker= $_REQUEST['smoker'];
		$type= $_REQUEST['type'];
		//echo $type;
		$amount= $_REQUEST['amount'];
		$amount1= $_REQUEST['amount'];
		//echo $amount;
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
	  
} */
?>

<div class="reng rengrs">
<div class="container-fluid" style="background-color:#000;">
		<div class="column one">
		
			<div class="top_bar_left clearfix" style="width: 1319px;">
			
				<!-- .logo -->
				<div class="logo">
					<h1><a id="logo" href="http://lifeinsuranceabroad.com" title="Life Insurance Abroad" style="display:block;line-height: 0 !important;"><img class="logo-main   scale-with-grid" src="http://compucore.tech/insurance/themes/insurance/assets/images/logo-1.png" alt="Life Insurance Abroad" style="height:100%;"></a></h1>			</div>
			
				<div class="menu_wrapper">
					Call us Now: +420.777 322 522&nbsp; &nbsp;  U.S. +1.616.723.8494				
				</div>			
				
				<div class="secondary_menu_wrapper">
					<!-- #secondary-menu -->
									</div>
				
				<div class="banner_wrapper">
									</div>
				
				<div class="search_wrapper">
					
				</div>				
				
			</div>
			
						
		</div>
</div>
	
	
	
<div class="row">
  <div class="coffee-span-12 column-12 untbn">
  <div class="container">
  <h2 style="color:#fff; font-weight:bold;font-size: 30px;">Your Instant Life Insurance Quote </h2>
  </div>
  </div>
</div>
<div class="row row-3">
  <div class="coffee-span-12 column-results cl-rs-in">
    <div class="container container-1">
      <div class="subgrid subgrid-1">
        <div class="row subgrid-row-1 ">
		
		<div class="row subgrid-row-3">
		<span class="text-element text-result-list">
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3"> <strong>Name:</strong> <?php  echo $name; ?> </div>  
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:center"> <strong>Email:</strong> <?php  echo $email; ?>  </div> 
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:center"><strong>Phone:</strong> <?php  echo $phone; ?>  </div>  
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:right"><strong>Birthdate:</strong> <?php  echo date("M-d-Y", strtotime($dob)); ?>   </div> 
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3"><strong>Age:</strong> <?php  echo $age; ?> </div> 
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:center"><strong>Gender:</strong> <?php  echo $gender; ?>  </div>
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:center"><strong>Smoker/ Tobacco:</strong> <?php  echo $smoker; ?>  </div>  
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3" style="text-align:right"><strong>Country of Citizenship:</strong> <?php  echo $citizenship; ?> </div> 
		<div class="coffee-span-6 subgrid-column-results coffee-545-span-3"><strong>Country of current Residence</strong> <?php  echo $residence; ?>  </div>
		
		</span> 
       </div>
<hr/>



	   <div class="row subgrid-row-2">
        
		
 <form action="<?php echo Yii::app()->createUrl('//site/result', array('re'=>'recal', 'type'=>$type, 'amount'=>$amount, 'name'=>$name, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone)); ?>" id="rfmm" method="POST">
          
		<div class="coffee-span-12 subgrid-column-9 coffee-545-span-4"> <span class="text-element text-results-title">Amount of Insurance:</span>
              <select id="FaceSel" class="select drop-down-results" name="amount">
                <option value="250000" <?php if($amount==250000) echo 'selected="selected"' ?>>$ 250,000</option>
                <option value="500000" <?php if($amount==500000) echo 'selected="selected"' ?>>$ 500,000</option>
                <option value="1000000" <?php if($amount==1000000) echo 'selected="selected"' ?>>$ 1,000,000</option>
                <option value="2000000" <?php if($amount==2000000) echo 'selected="selected"' ?>>$ 2,000,000</option>
                <option value="3000000" <?php if($amount==3000000) echo 'selected="selected"' ?>>$ 3,000,000</option>
              </select>
            </div>
            <div class="coffee-span-12 coffee-545-span-4 subgrid-column-8"> <span class="text-element text-results-title">Type of Insurance:</span>
              <select id="NewCatSel" class="select drop-down-results" name="type">
                <option value="10 Years Level Term" <?php if($type=="10 Years Level Term") echo 'selected="selected"' ?>>10 Years Level Term</option>
                <option value="20 Years Level Term" <?php if($type=="20 Years Level Term") echo 'selected="selected"' ?>>20 Years Level Term</option>
                <option value="30 Years Level Term" <?php if($type=="30 Years Level Term") echo 'selected="selected"' ?>>30 Years Level Term</option>
              </select>
            </div>
            <div class="coffee-span-12 coffee-545-span-4 subgrid-column-recalc" style="text-align:center; padding-top:10px;">
            <button name='submit' type="submit" class="button-submit-3">Recalculate</button>
          </form>
        </div>
      </div>
       <span style="padding:0 18px 0 10px;">For your convenience, we have emailed you a copy of each quote calculation you have requested.  Please do not be concerned by these multiple emails since we &nbsp;&nbsp; have NOT nor ever will, store or share your email address or Personal Data.</span>
<br/>

      <hr/>
      
       <p style="font-weight:bold; padding-left:5px;">This quote assumes that you have a "Preferred/Excellent" medical history and health report. If our underwriter's findings differ from "Preferred/Excellent", your final annual insurance cost will be higher than quoted.</p>
<p style="font-weight:bold; padding-left: 5px;">However, because we use a universal application form that allows us to create a comparison between our three partner insurance companies, we are able to guarantee you the lowest price possible from our partners.</p>
    </div>
  </div>
</div>
<?php /*?><div class="row">
  <div class="coffee-span-12">
    <div class="container container-text">
       
    </div>
   </div>
</div><?php */?>
<form action="<?php echo Yii::app()->createUrl('//site/form', array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob)); ?>" method="POST"> 
<div class="row row-8">


<?php
$sql=Products::model()->findAll(array(
'condition'=>'gender=:gender and type=:type and smoker=:smoker and amount=:amount and :age BETWEEN age_start and age_end',
'params'=>array(':gender'=>$gender, ':type'=>$type, ':smoker'=>$smoker, ':amount'=>$amount, ':age' => $age),
'order'=>'annual_rate asc',
));

if (count($sql)>0){ ?>



<?php
foreach($sql as $q):
?>
<div class="coffee-span-12 column-results">
<div class="container container-results ">
<div class="subgrid subgrid-1">
  <div class="row subgrid-row-3">
    <div class="coffee-span-6 subgrid-column-results coffee-545-span-4"> 
	<?php $pc=ProductsCategory::model()->find(array(
	'condition'=>'product_id=:product_id',
	'params'=>array(':product_id'=>$q->id),
	)); 
	?>
	<img src="<?php echo Yii::app()->baseUrl?>/upload/<?php echo $companyImage = Category::model()->findByPk($pc->category_id)->image; ?>" style='width:150px; padding-top:5px'><br/>
	<span class="text-element text-result-list"><?php $companyName= Category::model()->findByPk($pc->category_id)->name; echo $companyName;
	?></span></div>
    <div class="coffee-span-6 subgrid-column-results2 coffee-545-span-4" style='text-align:center'> <span class="text-element text-premium"><font style="color: #222222;"><b><?php echo '$ '.number_format($q->annual_rate); ?>.</b></font><span class="text-text-9">&nbsp; Annually</span> </span><p><?php echo $type;?></p></div>
    <div class="coffee-span-2 coffee-545-span-4 subgrid-column-24" style='padding-top:7px; text-align:right'>
	
	<input type="hidden" name="annualRate" value="<?= "$ ".number_format($q->annual_rate); ?>">
     <button type="submit" name="Request" class="button" value="<?php echo $q->id; ?>">Apply Now</button>  
	  
	<!-- pop up   <button class="md-fancy"  style="background-color: #287cc1;" href="<?php //echo Yii::app()->createUrl('//site/popup', array('id' => $q->id, 're'=>'recal',  'name'=>$name, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob))?>">Apply Now</button> -->
	<input type="hidden" name="companyName" value="<?=$companyName?>">

	
    </div>
  </div>
  </div>
</div>
</div>
  <?php  
  endforeach;
  ?>
</form> 
  <?php
  } 
  else {?>
  <div class="coffee-span-12 column-results">
  <div class="container container-results ">
  <div class="row" style='text-align:center; color: #999;'>   No Result Found 
  </div>
  </div>
  </div>
  <?php } ?>
  

  
  <div class="row">
    <div class="coffee-span-12">
      <div class="container container-text">

<!--<p class="paragraph paragraph-details"><i><font color="#CB2725">P+, Pf, R+, and Rg</font></i> are indicators

that will help you determine the underwriting (health and lifestyle) criteria

that you will need to satisfy in order to qualify for the premium shown.</p>

 
<p class="paragraph paragraph-details"><i><font color="#CB2725">P+</font></i> - indicates a rate for

an individual in very preferred (preferred plus) health. A company offering

a P+ premium also offers a preferred (Pf) and a regular (Rg) health premium.

Pf premiums are less difficult to qualify for. Rg premiums are much less

difficult to qualify for.</p>



<p class="paragraph paragraph-details"><i><font color="#CB2725">Pf</font></i> - indicates a rate for

an individual in preferred health. A company offering a Pf premium also

offers a regular (Rg) health premium. Rg premiums are less difficult to

qualify for.</p>



<p class="paragraph paragraph-details"><i><font color="#CB2725">R+</font></i> - indicates a rate for

an individual in somewhat better health than regular (Rg), but not what 

the life insurance industry typically terms "preferred health".  

A company offering an R+ premium also offers a regular (Rg) health premium. 

Rg premiums are less difficult to qualify for.</p>




<p class="paragraph paragraph-details"><i><font color="#CB2725">Rg</font></i> - indicates a rate for

a person in normal health who does not have any medical or lifestyle condition

which would increase their future risk of dying.</p>



<p class="paragraph paragraph-details"><i><font color="#0148CB">Example:&nbsp; </font></i>A person who

has moderately elevated blood pressure may not qualify for P+, Pf or R+ premium

rates, but they might qualify for Rg. A private pilot may not qualify for

P+ or Pf premiums, but might qualify for R+ or Rg rates. You will need to speak

to the company or an insurance agent for more details. Premiums quoted

for smokers already take into account that the insured person smokes and

therefore has a greater risk of death than a non-smokers. Premiums offered

to smokers are already higher than those for non-smokers.</p>-->





<p class="paragraph paragraph-details"><font color="#CB2725" style="font-size:16px;"><b>Important things to consider when comparing Life Insurance Companies and their products</b></font></p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Comparing Different Level Periods</strong></font></b> - Should you be buying a 10 year term product, a 20 year term or a 30 year   term? How long do you need the insurance? If you buy a 10 year term,   how will future cost increases after the 10th year compare to a longer   level term plan such as 20 year term? If you only need insurance for 10   years, you could be wasting your money buying a 20 year term product.   You should discuss why you are buying the insurance with our customer   service team and let us give you the benefit of our knowledge and   experience. We may be able to identify other factors you have not yet   considered and can easily compare, side by side, the future cost of   different level term insurance policies.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Health Risk Conditions</strong></font></b> - Each life insurance company establishes its own health and lifestyle   requirements to determine what premiums you may qualify for. Slightly   high blood pressure may disqualify you for one company's   &ldquo;preferred/excellent&rdquo; health premium, but might be acceptable to obtain   another company's &ldquo;preferred/excellent&rdquo; health premium. We will be able   to give you more guidance.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Smoking Considerations</strong></font></b> - Not all life companies define smoking the same way. If you have never   smoked or used tobacco products in any way, then a non-smoking   comparison will include products that you can qualify for based upon   non-smoking. If you were a smoker and later quit, then how long ago that   you quit may limit your choices. If you do smoke, some companies may   offer products with better premiums depending on how little you smoke,   or whether you smoke cigars or pipe rather than cigarettes. You may need   to discuss this with underwriting.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Company Financial Strength</strong></font></b> - Not all life insurance companies are the same. Some are very large   financially, some are small. Some companies are in better financial   condition than others. The longer the level term period, the more   important it is to consider how healthy and strong the life insurance   company is.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Premium Guarantees</strong></font></b>

- Are the premiums for the policy fully guaranteed? Not all companies   fully guarantee the initial premium for the entire level period.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Renewal Period</strong></font></b> - Most level term policies have the ability to renew the policy beyond the   initial level premium period. Two products may offer identical premiums   for the initial level period, and yet there may be an enormous   difference in renewal costs beyond the level period. In addition to our   level term insurance products, we also offer Universal Life. These &ldquo;U/L"   products have term-like premiums which offer initial guaranteed level   premiums comparable to the level periods of corresponding guaranteed   level term policies. For the initial level period, U/L policies with   term-like guaranteed premiums provide comparable premium/death benefits   as the corresponding level term products. However, the ability to renew   these U/L policies, and the premiums that you might pay to renew these   policies, can differ significantly from a corresponding level premium   term policy. Our customer service team has access to renewal information   and can provide you with a year by year future premium table that lets   you compare more fully.</p>



<p class="paragraph paragraph-details"><b><font color="#0148CB"><strong>Conversion Period</strong></font></b> - Many term policies offer the   ability to exchange the term policy for a universal or whole life policy   without having to again medically qualify. Should your health change,   and should you not be able to buy a new policy elsewhere, you may find   the conversion option important. Not all policies offer the same time   period for conversion to take place, and not all give you access to the   same types of universal or whole life. Our customer service team has   access to more information about that.<br>
</p>
<p>There are other considerations that you will want to discuss with us.</p>
<p class="paragraph paragraph-details"><font color="#CB2725" style="font-size:16px;"><b><strong>About this quote compariso</strong>n</b></font></p>



<p>The information used in this   comparison has been taken from the rate cards and rate manuals which   life companies routinely publish and distribute to life agents and   brokers. To the best of Hamilton Hudson's ability we have done   everything we can to ensure that the information contained in this   comparison is up-to-date and accurate. However, WE CANNOT GUARANTEE   ACCURACY.<br>
</p>
<p>In   the event that there is a discrepancy between the information contained   in this comparison, and any life company authorized illustration and/or   policy, the policy shall govern.</p>
<p class="paragraph paragraph-details">&nbsp;</p>




<!-- <p class="paragraph paragraph-details">Copyright<sup>&copy;</sup> 2016 Compulife Software, Inc.

<br>Compulife<sup>&reg;</sup> is a registered trademark of Compulife Software, Inc.

<br><br><b>COMPULIFE&reg; Software, Inc.</b>
<br>1509 Paradise Camp Road
<br>Harrodsburg, KY 40330

<br><br><b><font color="#0148CB">(800) 798-3488</b></font>

<br> 
</p> -->

      </div>
    </div>
  </div>
  
  
</div>

</div>
</div>
<?php include 'footer.php'; ?>
<style>
.button {
    background-color: #287cc1!important; 
    border: none!important;
    color: white!important;
    padding: 15px 32px!important;
    text-align: center!important;
    text-decoration: none!important;
    display: inline-block!important;
    font-size: 16px!important;
}

</style>
