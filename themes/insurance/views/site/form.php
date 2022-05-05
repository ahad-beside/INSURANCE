<link rel="icon" href="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/favicon.jpg" sizes="32x32">
<style>
.grid-1{
    background-color: #fff !important;
}
.sm-hd {
  font-size: 20px;
}
.logo h1 {
  margin: 7px 0;
}
</style>
<link rel="stylesheet" href="<?= Yii::app()->theme->baseUrl ?>/assets/css/bootstrap.css">

<?php //echo date('F d, Y', strtotime('2018-02-02')); ?>

<div class="container-fluid topHead" style="background-color:#000;padding-left:0px">
		<div class="column one">
		
			<div class="top_bar_left clearfix panel-heading" style="width: 1319px;">
			
				<!-- .logo -->
				<div class="logo">
					<h1><a id="logo" href="http://lifeinsuranceabroad.com" title="Life Insurance Abroad" style="display:block;line-height: 0 !important;"><img class="logo-main   scale-with-grid" src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/logo-1.png" alt="Life Insurance Abroad" style="height:100%;"></a></h1>			
				</div>
				<div class="menu_wrapper" style="color:white">
					Call us Now: +1.616.723.8494				
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
<div class="row" style="margin: 0px auto 30px;">
  <div class="coffee-span-12 column-12 untbn" style="background-color: transparent;">
  <div class="container">
  <h2 style="color:#333; font-weight:bold;margin:10px 0px;">Your Online Life Insurance Application Form &nbsp; <span class="sm-hd" style="font-weight:normal !important;">to be followed by telephone verification </span> 
  	 <button  type="button" onclick="window.print()" style="padding: 1px 17px!important; margin-left: 65px; color:#ffff!important;" class="panel-heading"><i class="fa fa-print"></i> <h5>Print</h5></button>

  </h2>
  </div>
  </div>
</div>

<div class="container formContainer">
  <div class="col-md-12">
    <div class="contentBox- row">
      <form action="<?php echo Yii::app()->createUrl('//site/request', array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage,'id'=>$id)); ?>" enctype="multipart/form-data" method="POST"> 
        
        <div class="cp">
          <input type="hidden" name="id" value="<?=$id?>">
          <?php  include('form/company.php'); ?>

          <div class="col-md-12">
            <div class="panel-heading" style="text-align:left"><a name="submit" href="<?php echo Yii::app()->createUrl('//site/result2',  array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'gender'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship,'dob'=>$dob, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage, 'age'=>$age,'id'=>$id)); ?>" style="padding-top:2px;" class="button2">&lt; Back</a></div>
          </div>
        </div>

        <div class="col-md-12">
          <div class="conten">
          <?=$companyDescription;?>
          </div>
        </div>

        <?php 
        if(isset($_GET['annualRate']) && $_GET['annualRate']!='')
          $annualRate=$_GET['annualRate'];
        else
          $annualRate=$annualRate;

        ?>
        <div class="col-md-12">
          <div class="firstStep">
          <div class="content col-md-12">
            <div class="title-design">
              <h1>Proposed Insured</h1>
            </div>
          </div>

          <div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="amount">Face Amount</label>
                <input value="$ <?=number_format($amount)?>." readonly type="text" class="form-control" id="amount" placeholder="Face Amount">
                <input name="Section1Face" value="<?=$amount?>" readonly type="hidden" class="form-control" placeholder="Face Amount">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="coverage">Length of Coverage</label>
                <input name="Section1Length" type="text" class="form-control" id="coverage" placeholder="Length of Coverage" value="<?=$type?>" readonly>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="cost">Proposed Annual Cost</label>
                <input name="section1AnnualRate" value="<?php echo "$ ".number_format($annualRate)."."; ?>" readonly type="text" class="form-control" id="cost" placeholder="Proposed Annual Cost">
              </div>
            </div>
          </div>

          <div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="Name">Name<span class="required">*</span></label>
                <input type="text" class="form-control" id="section2Firstname" name="section2Firstname" value="<?php echo $name; ?>" readonly placeholder="Name">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="section2Email">E-mail Address<span class="required">*</span></label>
                <input type="text" class="form-control" id="section2Email" name="section2Email" value="<?php if(!isset($_POST['section2Email'])) echo $email; ?>" readonly>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="dob">Date Of Birth<span class="required">*</span></label>
                <input type="text" class="form-control" id="dob" placeholder="Date Of Birth" value="<?php echo date('M-d-Y', strtotime($_REQUEST['dob'])); ?>" readonly>
                <input type="hidden" id="dob" name="CustomerRequest[dob]" value="<?php echo date('M-d-Y', strtotime($_REQUEST['dob'])); ?>">
              </div>
            </div>
          </div>

          <div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="Name">Place of Birth (State/Country)<span class="required">*</span></label>
                <input type="text" class="form-control" id="Name" name="section2PlaceofBirth" placeholder="Place of Birth (State/Country)" required="required">

              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="section2Email">Occupation<span class="required">*</span></label>
                <input type="text" class="form-control" name="section2Occupation" id="section2Email" placeholder="Occupation" required="required">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="row">
                <div class="col-md-6">
                 <div class="form-group">
                  <label for="section2Email">Sex<span class="required">*</span></label>
                  <div class="radio">
                      <label>
                        <input required="required" type="radio" id="section2sex" name="section2sex" value="Male" <?php if ($sex =="Male") echo "checked";?>>&nbsp;Male
                      </label>
                    </div>
                    <div class="radio">
                      <label>
                        <input required="required" type="radio" id="section2sex" name="section2sex" value="Female" <?php if ($sex =="Female") echo "checked";?>>&nbsp;Female
                      </label>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                  <label for="section2Email">Smoker<span class="required">*</span></label>
                  <div class="radio">
                      <label>
                        <input required="required" type="radio" id="section2smoker" name="section2smoker" value="No" <?php if ($smoker =="No") echo "checked";?>>&nbsp;No
                      </label>
                    </div>
                    <div class="radio">
                      <label>
                        <input required="required" type="radio" id="section2smoker" name="section2smoker" value="Yes" <?php if ($smoker =="Yes") echo "checked";?>>&nbsp;Yes
                      </label>
                    </div>
                  </div>
                </div>
              </div>              
            </div>
          </div>
          <div class="">
            <div class="col-sm-12">
              <div class="form-group">
                <label for="section2Email">In Your own words, What are 
Your needs for the purchase of this Life Insurance policy?</label>
                <input type="text" class="form-control" name="proposed_what_are_you" id="proposed_what_are_you" placeholder="In Your own words, What are 
Your needs for the purchase of this Life Insurance policy?">
              </div>
            </div>
          </div>

          <div class="">
            <div class="col-sm-3">
              <div class="form-group">
                <label for="height">Height (inch/cm)</label>
                <input type="text" class="form-control" id="height" name="ft" placeholder="Height (inch/cm)">
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label for="weight">Weight (lbs/kg)</label>
                <input type="text" class="form-control" id="weight" name="lbs" placeholder="Weight (lbs/kg)">
              </div>
            </div>

            <div class="col-md-3">
                  <div class="form-group">
                  <label for="material">Marital Status</label>
                  <div class="radio">
                      <label>
                        <input type="radio" name="maritialStatus" id="material" value="Single" checked>
                        Single
                      </label>
                    </div>
                    <div class="radio">
                      <label>
                        <input type="radio" name="maritialStatus" id="material" value="Married">
                        Married
                      </label>
                    </div>
                  </div>
                </div>

                <div class="col-sm-3">
                  <div class="form-group">
                    <label for="child">Number of Children</label>
                    <input type="text" class="form-control" id="child" name="numberofchield" placeholder="Number of Children">
                  </div>
                </div>

          </div>

          <div class="">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="bene">Name of Beneficiary<span class="required">*</span></label>
                <input required="required" type="text" class="form-control" id="bene" name="nameofbeneficiary" placeholder="Name of Beneficiary">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="relation">Relationship to the proposed Insured<span class="required">*</span></label>
                <input required="required" type="text" class="form-control" id="relation" name="relation" placeholder="Relationship to the proposed Insured">
              </div>
            </div>
          </div>

          <div>
          	<div class="col-sm-6">
                <div class="form-group">
                  <label for="amount">Name of Policy Owner or Trust:</label>
                  <input type="text" class="form-control" id="amount" name="policy_owner" placeholder="Name of Policy Owner or Trust">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="coverage">Owner's Date of Birth or Trust Date of Execution:</label>
                  <input type="text" class="form-control" id="coverage" name="owner_date_of_birth" placeholder="Owner's Date of Birth or Trust Date of Execution">
                </div>
              </div>
          </div>

          <div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="areyou">Are you taking any Prescription medication?</label>
                <div class="radio">
                    <label>
                      <input type="radio" name="yesno"  value="yes" id="yes">&nbsp;Yes
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="yesno"  value="no" id="no">&nbsp;No
                    </label>
                  </div>
                </div>
                <div id="medicationYes" style="display: none;">
                  Diagnosis / Medical Condition<input type="text" name="prescribedcondition" id="prescribedcondition"/>
                  Name of Medication<input type="text" name="prescribedmedication" id="prescribedmedication"/>
                  Daily Dosage<input type="text" name="prescribeddosage" id="prescribeddosage"/>
                  
                </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="tenyear">Have you been hospitalized or had surgery within the past 10 years?</label>
                <div class="radio">
                    <label>
                      <input type="radio" name="yesno2"  value="Yes" id="yes2">&nbsp;Yes
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="yesno2"  value="No" id="no2">&nbsp;No
                    </label>
                  </div>
                </div>
                <div id="hospitalizesYes" style="display:none">
            Diagnosis / Medical Condition<input type="text" name="hospitalizescondition" id="hospitalizescondition"/>
            Dates of Treatment<input type="text" name="treatmentDate" id="treatmentDate"/>Name and location of medical facility<input type="text" name="medicalFacility" id="medicalFacility"/>
          </div>
            </div>
          </div>

          <div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="Citizenship"> Country or Countries of Citizenship<span class="required">*</span></label>
                <input required="required" type="text" class="form-control" name="section2Citizen" id="section2Citizen" value="<?php if(!isset($_POST['section2Citizen'])) echo $citizenship; ?>" placeholder="Country or Countries of Citizenship" readonly>
              </div>
            </div>
            <div class="col-sm-6" style="display: none">
              <div class="form-group">
                <label for="ifno"> If "No" of what Country?</label>
                <input type="text" class="form-control" id="ifno" placeholder="Name">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="Citizenship"> Owner or Trust's Legal Address:</label>
                <input type="text" class="form-control" name="proposed_owner_trust" id="ownerTrust" placeholder="Owner or Trust's Legal Address">
              </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">State</label>
                  <!-- <input required="required" type="text" class="form-control" id="us_state" name="us_state" placeholder="State"> -->
                  <select class="form-control"  id="us_state" name="proposed_state">
                    <option value="">Select State</option>
  <option value="AL">Alabama</option>
  <option value="AK">Alaska</option>
  <option value="AZ">Arizona</option>
  <option value="AR">Arkansas</option>
  <option value="CA">California</option>
  <option value="CO">Colorado</option>
  <option value="CT">Connecticut</option>
  <option value="DE">Delaware</option>
  <option value="DC">District Of Columbia</option>
  <option value="FL">Florida</option>
  <option value="GA">Georgia</option>
  <option value="HI">Hawaii</option>
  <option value="ID">Idaho</option>
  <option value="IL">Illinois</option>
  <option value="IN">Indiana</option>
  <option value="IA">Iowa</option>
  <option value="KS">Kansas</option>
  <option value="KY">Kentucky</option>
  <option value="LA">Louisiana</option>
  <option value="ME">Maine</option>
  <option value="MD">Maryland</option>
  <option value="MA">Massachusetts</option>
  <option value="MI">Michigan</option>
  <option value="MN">Minnesota</option>
  <option value="MS">Mississippi</option>
  <option value="MO">Missouri</option>
  <option value="MT">Montana</option>
  <option value="NE">Nebraska</option>
  <option value="NV">Nevada</option>
  <option value="NH">New Hampshire</option>
  <option value="NJ">New Jersey</option>
  <option value="NM">New Mexico</option>
  <option value="NY">New York</option>
  <option value="NC">North Carolina</option>
  <option value="ND">North Dakota</option>
  <option value="OH">Ohio</option>
  <option value="OK">Oklahoma</option>
  <option value="OR">Oregon</option>
  <option value="PA">Pennsylvania</option>
  <option value="RI">Rhode Island</option>
  <option value="SC">South Carolina</option>
  <option value="SD">South Dakota</option>
  <option value="TN">Tennessee</option>
  <option value="TX">Texas</option>
  <option value="UT">Utah</option>
  <option value="VT">Vermont</option>
  <option value="VA">Virginia</option>
  <option value="WA">Washington</option>
  <option value="WV">West Virginia</option>
  <option value="WI">Wisconsin</option>
  <option value="WY">Wyoming</option>
</select> 
                </div>
              </div>
          </div>

          <div class="non-us">Non-U.S. Citizens are required to maintain a current U.S. bank 
Account to qualify for this policy</div>

<div class="">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="section2Email">Do you have a current bank account in the U.S.?<span class="required">*</span></label>
                <div class="radio">
                    <label>
                      <input required="required" type="radio" name="bank_account" id="bank_account" value="Yes" checked>
                      Yes
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input required="required" type="radio" name="bank_account" id="bank_account1" value="No">
                      No
                    </label>
                  </div>
                </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="Name"> Driver License # & State</label>
                <input type="text" class="form-control" id="Name" name="driver_license" placeholder="Driver License # & State">
              </div>
            </div>
          </div>

        </div>
        </div>
        

        <div class="col-md-12">
          <div class="secondStep">
            <div class="content col-md-12">
              <div class="title-design">
                <h1>Current Full-Time Residence Address Abroad:</h1>
              </div>
            </div>

            <div class="">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Street and Number<span class="required">*</span></label>
                  <input required="" type="text" class="form-control" id="amount" name="current_street_number" placeholder="Street and Number">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">Town and City<span class="required">*</span></label>
                  <input required="required" type="text" name="current_town_city" class="form-control" id="coverage" placeholder="Town and City">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">Post Code</label>
                  <input type="text" class="form-control" id="cost" placeholder="Proposed Post Code" name="current_post_code">
                </div>
              </div>
            </div>

            <div class="">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Country<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="section2residence" name="section2residence" value="<?php if(!isset($_POST['section2residence'])) echo $residence; ?>">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">Home/Mobile telephone number Abroad<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="section2Phone1" name="section2Phone1" value="<?php if(!isset($_POST['section2Phone1'])) echo $phone; ?>" readonly>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">Best day & time to Call</label>
                  <input type="text" class="form-control" id="section2Form" placeholder="Best day & time to Call" name="section2Form">
                </div>
              </div>
            </div>


          <div class="">
            <div class="col-sm-12">
              <div class="form-group">
                <label for="section2Email">In Your own words, What is the purpose and planned duration of your current residency abroad?</label>
                <input type="text" class="form-control" name="what_is_purpose" id="what_is_purpose" placeholder="In Your own words, What is the purpose and planned duration of your current residency abroad?">
              </div>
            </div>
          </div>

            <div class="colBox">
              <div class="col-sm-7">
                <div class="form-group">
                  <label for="amount">What % of the Year do You Reside at this Address?</label>
                  <input type="text" class="form-control" id="amount" placeholder="What % of the Year do You Reside at this Address?" name="year_address">
                </div>
              </div>
            </div>

            <div class="colBox">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="section2Email">Do you have current Business interests or own property in the U.S.?<span class="required">*</span></label>
                  <div class="radio">
                    <label>
                      <input required="required" type="radio" name="business_interest" id="business_interest" value="Yes">
                      Yes
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input required="required" type="radio" name="business_interest" id="business_interest2" value="No">
                      No
                    </label>
                  </div>
                </div>
              </div>
              <div class="col-sm-4" id="businessInterest" style="display: none;">
                <div class="form-group">
                  <label for="cost">Please provide details, if any:</label>
                  <textarea class="form-control" rows="1" name="business_interest_text"></textarea>
                </div>
              </div>
            </div>


          </div>
        </div>


        <div class="col-md-12">
          <div class="thirdStep">
            <div class="content col-md-12">
              <div class="title-design">
                <h1>U.S. Mailing Address:</h1>
              </div>
            </div>

            <div class="non-us">To qualify for this Life Insurance policy, you must receive mail in your name at this address</div>

            <div class="colBox">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Number and Street<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="us_number_street" name="us_number_street" placeholder="Number and Street">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">City or Town<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="us_city_town" name="us_city_town" placeholder="City or Town">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">State<span class="required">*</span></label>
                  <!-- <input required="required" type="text" class="form-control" id="us_state" name="us_state" placeholder="State"> -->
                  <select class="form-control"  id="us_state" name="us_state">
                    <option value="">Select State</option>
  <option value="AL">Alabama</option>
  <option value="AK">Alaska</option>
  <option value="AZ">Arizona</option>
  <option value="AR">Arkansas</option>
  <option value="CA">California</option>
  <option value="CO">Colorado</option>
  <option value="CT">Connecticut</option>
  <option value="DE">Delaware</option>
  <option value="DC">District Of Columbia</option>
  <option value="FL">Florida</option>
  <option value="GA">Georgia</option>
  <option value="HI">Hawaii</option>
  <option value="ID">Idaho</option>
  <option value="IL">Illinois</option>
  <option value="IN">Indiana</option>
  <option value="IA">Iowa</option>
  <option value="KS">Kansas</option>
  <option value="KY">Kentucky</option>
  <option value="LA">Louisiana</option>
  <option value="ME">Maine</option>
  <option value="MD">Maryland</option>
  <option value="MA">Massachusetts</option>
  <option value="MI">Michigan</option>
  <option value="MN">Minnesota</option>
  <option value="MS">Mississippi</option>
  <option value="MO">Missouri</option>
  <option value="MT">Montana</option>
  <option value="NE">Nebraska</option>
  <option value="NV">Nevada</option>
  <option value="NH">New Hampshire</option>
  <option value="NJ">New Jersey</option>
  <option value="NM">New Mexico</option>
  <option value="NY">New York</option>
  <option value="NC">North Carolina</option>
  <option value="ND">North Dakota</option>
  <option value="OH">Ohio</option>
  <option value="OK">Oklahoma</option>
  <option value="OR">Oregon</option>
  <option value="PA">Pennsylvania</option>
  <option value="RI">Rhode Island</option>
  <option value="SC">South Carolina</option>
  <option value="SD">South Dakota</option>
  <option value="TN">Tennessee</option>
  <option value="TX">Texas</option>
  <option value="UT">Utah</option>
  <option value="VT">Vermont</option>
  <option value="VA">Virginia</option>
  <option value="WA">Washington</option>
  <option value="WV">West Virginia</option>
  <option value="WI">Wisconsin</option>
  <option value="WY">Wyoming</option>
</select> 
                </div>
              </div>
              <div class="clearfix">&nbsp;</div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Zip Code<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="us_zip" name="us_zip" placeholder="Zip Code">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">U.S. Phone Number</label>
                  <input type="text" class="form-control" id="us_phone" name="us_phone" placeholder="U.S. Phone Number">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">Best day & time to Call?</label>
                  <input type="text" class="form-control" id="us_best_timetocall" name="us_best_timetocall" placeholder="Best day & time to Call?">
                </div>
              </div>  
            </div>

          </div>
        </div>


        <div class="col-md-12">
          <div class="fourthStep">
            <div class="content col-md-12">
              <div class="title-design">
                <h1>Address for Scheduling your Paramedic Exam<br><span style="text-transform: initial;">(Edit If different than Above):</span></h1>
              </div>
              <div class="non-us">To Qualify for this Life Insurance Policy, you are required to take a Paramedic Exam with a Blood and Urine sample at your convenience and at our expense in the United States only, preferably at the U.S. Mailing Address stated above.</div>
              <div style="padding: 0px 12px 12px;">To Schedule your exam in advance of your next visit, please provide us with the Following: </div>
            </div>
            <div class="colBox">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Number and Street</label>
                  <input type="text" class="form-control" id="primary_street_number" name="primary_street_number" placeholder="Number and Street">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">City or Town</label>
                  <input type="text" class="form-control" id="primary_city_town" name="primary_city_town" placeholder="City or Town">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">State</label>
                  <!-- <input type="text" class="form-control" id="primary_state" name="primary_state" placeholder="State"> -->
                  <select class="form-control"  id="primary_state" name="primary_state">
                    <option value="">Select State</option>
  <option value="AL">Alabama</option>
  <option value="AK">Alaska</option>
  <option value="AZ">Arizona</option>
  <option value="AR">Arkansas</option>
  <option value="CA">California</option>
  <option value="CO">Colorado</option>
  <option value="CT">Connecticut</option>
  <option value="DE">Delaware</option>
  <option value="DC">District Of Columbia</option>
  <option value="FL">Florida</option>
  <option value="GA">Georgia</option>
  <option value="HI">Hawaii</option>
  <option value="ID">Idaho</option>
  <option value="IL">Illinois</option>
  <option value="IN">Indiana</option>
  <option value="IA">Iowa</option>
  <option value="KS">Kansas</option>
  <option value="KY">Kentucky</option>
  <option value="LA">Louisiana</option>
  <option value="ME">Maine</option>
  <option value="MD">Maryland</option>
  <option value="MA">Massachusetts</option>
  <option value="MI">Michigan</option>
  <option value="MN">Minnesota</option>
  <option value="MS">Mississippi</option>
  <option value="MO">Missouri</option>
  <option value="MT">Montana</option>
  <option value="NE">Nebraska</option>
  <option value="NV">Nevada</option>
  <option value="NH">New Hampshire</option>
  <option value="NJ">New Jersey</option>
  <option value="NM">New Mexico</option>
  <option value="NY">New York</option>
  <option value="NC">North Carolina</option>
  <option value="ND">North Dakota</option>
  <option value="OH">Ohio</option>
  <option value="OK">Oklahoma</option>
  <option value="OR">Oregon</option>
  <option value="PA">Pennsylvania</option>
  <option value="RI">Rhode Island</option>
  <option value="SC">South Carolina</option>
  <option value="SD">South Dakota</option>
  <option value="TN">Tennessee</option>
  <option value="TX">Texas</option>
  <option value="UT">Utah</option>
  <option value="VT">Vermont</option>
  <option value="VA">Virginia</option>
  <option value="WA">Washington</option>
  <option value="WV">West Virginia</option>
  <option value="WI">Wisconsin</option>
  <option value="WY">Wyoming</option>
</select> 
                </div>
              </div>
              <div class="clearfix">&nbsp;</div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Zip Code</label>
                  <input type="text" class="form-control" id="primary_zip" name="primary_zip" placeholder="Zip Code">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">Phone Number at this Location<span class="required">*</span></label>
                  <input required="required" type="text" class="form-control" id="primary_phone" name="primary_phone" placeholder="Phone Number at this Location">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">Best day & time to Call?</label>
                  <input type="text" class="form-control" id="primary_best_timetocall" name="primary_best_timetocall" placeholder="Best day & time to Call?">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="cost">Your Date of Arrival at this Address<span class="required">*</span></label>
                  <textarea required="required" class="form-control" rows="1" name="date_arrival" placeholder="Your Date of Arrival at this Address"></textarea>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="cost">Your Date of Departure from this Address<span class="required">*</span></label>
                  <textarea required="required" class="form-control" rows="1" name="date_departure" name="date_departure" placeholder="Your Date of Departure from this Address"></textarea>
                </div>
              </div>
            </div>
          </div>

        <div class="">
            <div class="col-sm-12">
              <div class="form-group">
                <label for="section2Email">If you are unable to schedule your Paramedic Exam at Your U.S. Mailing Address, kindly explain:</label>
                <input type="text" class="form-control" name="schedule_your_aramedic" id="schedule_your_aramedic" placeholder="If you are unable to schedule your Paramedic Exam at Your U.S. Mailing Address, kindly explain">
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="fiveStep">
            <div class="content col-md-12">
              <div class="title-design">
                <h1>Business Address</h1>
              </div>
            </div>
            <div class="colBox">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="bem">Name of Business or Employer</label>
                  <input type="text" class="form-control" id="bem" name="business_name" placeholder="Name of Business">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">Street and Number</label>
                  <input type="text" class="form-control" id="coverage" name="business_street" placeholder="Street and Number">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">City or Town, State or Region</label>
                  <input type="text" class="form-control" id="cost" name="business_city_town" placeholder="City or Town, State or Region">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="amount">Zip or Post Code</label>
                  <input type="text" class="form-control" id="amount" name="business_zip" placeholder="Zip or Post Code">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="coverage">Country</label>
                  <input type="text" class="form-control" id="coverage" name="business_country" placeholder="Country">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="cost">Websites</label>
                  <input type="text" class="form-control" id="cost" name="business_website" placeholder="Websites">
                </div>
              </div>             
              
            </div>

          </div>
        </div>

        <div class="col-md-12">
          <div class="sixStep">
            <div class="content col-md-12">
              <div class="title-design">
                <h1> OTHER INFORMATION:</h1>
              </div>
            </div>

            <div class="colBox">
              
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="section2Email">Is this policy being purchased as part of an employer owned life insurance program where the employer is the direct or indirect 
beneficiary of the policy?</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="is_policy_purchased" id="is_policy_purchased" value="Yes">
                      Yes
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="is_policy_purchased" id="is_policy_purchased2" value="No">
                      No
                    </label>
                  </div>
                </div>
              </div>

              <div class="col-sm-12">
                <div class="form-group">
                  <label for="">Additional Benefits and Riders: (If applicable)</label>
                  <div class="radio">
                    <label>
                      <input type="checkbox" name="benifits_riders[]" id="benifits_riders" value="Critical Illness Income Protection (Complete Applicable supplement)">
                      Critical Illness Income Protection (Complete Applicable supplement)
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="checkbox" name="benifits_riders[]" id="benifits_riders2" value="Global Health Insurance  (Complete Applicable supplement)">
                      Global Health Insurance  (Complete Applicable supplement)
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="checkbox" name="benifits_riders[]" id="benifits_riders3" value="Travel Accident Cover (Complete Applicable supplement)">
                      Travel Accident Cover (Complete Applicable supplement)
                    </label>
                  </div>

                  <div class="radio">
                    <label>
                      <input type="checkbox" name="benifits_riders[]" id="benifits_riders4" value="Long Term Care - Nursing Cover (Complete Applicable supplement)">
                      Long Term Care - Nursing Cover (Complete Applicable supplement)
                    </label>
                  </div>

                  <div class="radio">
                    <label>
                      <input type="checkbox" name="benifits_riders[]" id="benifits_riders5" value="Medical Advantage or Supplement (Complete Applicable supplement)">
                      Medical Advantage or Supplement (Complete Applicable supplement)
                    </label>
                  </div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group aboutOption">
                  <label for="section2Email">How did you hear about us?</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about" value="Facebook">
                      Facebook
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about2" value="Google">
                      Google
                    </label>
                    <input class="extravalue" id="google" type="text" style="width: auto;margin-top: 0px;margin-left: 20px;display: none;">
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about3" value="AmCham">
                      AmCham
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about4" value="In Flight Magazine">
                      In Flight Magazine
                    </label>
                    <input class="extravalue" id="inFlight" type="text" style="width: auto;margin-top: 0px;margin-left: 20px;display: none;">
                    </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about5" value="Friends">
                      Friends
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about6" value="Email">
                      Email
                    </label>

                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="hear_about" id="hear_about7" value="Other">
                      Other
                    </label>
                    <input class="extravalue" id="other" type="text" style="width: auto;margin-top: 0px;margin-left: 20px;display: none;">
                  </div>
                </div>
                <div class="form-group" id="" style="display: none;">
                  <input class="hear_about_text" name="hear_about_text" type="text" style="width: auto;margin-top: -8px;margin-right: 29px;">
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="Member">Member Discounts may Apply</label>
                  <select class="form-control" name="member_discount">
					  <option>AmCham- American Chamber of Commerce</option>
					  <option>ACA- American Citizen Abroad</option>
					  <option>Chabad Lubavitch Emissaries</option>
					  <option>JDC- Joint Distribution Committe</option>
					</select>
                  
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="applicable">Enter your Member Reference Code# (If applicable)</label>
                  <input type="text" class="form-control" name="member_reference" id="member_reference" placeholder="Enter your Member Reference Code# (If applicable)">
                </div>
              </div>             
              
            </div>

          </div>
        </div>

<div class="col-md-12 submitBtn noprint">
  <button name="submit" class="button" style="padding-top:2px; ">Submit</button>
</div>

      </form>
    </div>
  </div>
</div>




<div class="panel-heading"><?php include 'footer.php' ;?></div>
<style>
.aboutOption label{
  width: auto;
}
.test input[type="text"], .test input[type="number"], .test select {
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: 0 1px 3px #ddd inset;
    box-sizing: border-box;
    display: inline-block;
    margin: 8px 0;
    padding: 12px 20px;
    width: 100%;
}



.button {
    background-color: #287cc1!important; 
    border: none!important;
    color: white!important;
    padding: 15px 32px!important;
    text-align: center!important;
    text-decoration: none!important;
    display: inline-block!important;
    font-size: 18px!important;
	border-radius: 30px;
}

.button2 {
    background-color: #287cc1!important; 
    border: none!important;
    color: white!important;
    padding: 4px 20px!important;
    text-align: center!important;
    text-decoration: none!important;
    display: inline-block!important;
    font-size: 14px!important;
	border-radius: 17px;
}
.xdsoft_timepicker{
  display: none!important;
}
/*label{
  font-weight: normal;
}*/
</style>

<script>
	$(document).ready(function() {
	 $(document).on('keyup','#us_number_street',function(){
    $('#primary_street_number').val($(this).val());
   });
   $(document).on('keyup','#us_city_town',function(){
    $('#primary_city_town').val($(this).val());
   });
   $(document).on('change','#us_state',function(){
    $('#primary_state').val($(this).val());
   });
   $(document).on('keyup','#us_zip',function(){
    $('#primary_zip').val($(this).val());
   });
   $(document).on('keyup','#us_phone',function(){
    $('#primary_phone').val($(this).val());
   });
   $(document).on('keyup','#us_best_timetocall',function(){
    $('#primary_best_timetocall').val($(this).val());
   });
	 $('input[type="radio"]').click(function() {
       if($(this).attr('id') == 'yes') {
            $('#medicationYes').show();           
       }

       if($(this).attr('id') == 'no') {
            $('#medicationYes').hide();   
       }
	   
	   if($(this).attr('id') == 'yes2') {
            $('#hospitalizesYes').show();           
       }

       if($(this).attr('id') == 'no2') {
            $('#hospitalizesYes').hide();   
       }

       if($(this).attr('id') == 'business_interest') {
            $('#businessInterest').show();           
       }

       if($(this).attr('id') == 'business_interest2') {
            $('#businessInterest').hide();   
       }

       if($(this).attr('id') == 'hear_about2') {
            $('#google').show();
            $('#other').hide();
            $('#inFlight').hide();         
       }
       if($(this).attr('id') == 'hear_about4'){
        $('#inFlight').show();
        $('#other').hide();
        $('#google').hide();
       }
       if($(this).attr('id') == 'hear_about7'){
        $('#other').show();
        $('#inFlight').hide();  
        $('#google').hide();  
       }

       if($(this).attr('id') == 'hear_about' || $(this).attr('id') == 'hear_about3' || $(this).attr('id') == 'hear_about5' || $(this).attr('id') == 'hear_about6') {
            $('#other').hide();
            $('#inFlight').hide();  
            $('#google').hide(); 
       }
   });
   
   
  		$(document).on('keyup','.extravalue',function(){
        $('.hear_about_text').val($(this).val());
      });
});

</script>

<style>
 @media print {
        body{
            margin: 0px!important; padding: 0px!important;
            height: 100%;
            width: 100%;
        }
        #forprint{
            width: 100%; height: auto; padding: 10px; margin: 0px auto!important;
        }
        .noprint{
            display: none!important;
        }
        #page-wrapper{
            margin: 0px!important;
            min-height: initial!important;
            height: auto!important;
            border: none!important;
        }
        .panel{
            border: none;
        }
        .panel-heading{
            display: none;
        }
		
		#bannernoprint{
            display: none;
        }
		
		#topmenunoprint{
            display: none;
        }
		
		 a[href]:after {   <!--Need to Hide Links in Print Preview      content: " (" attr(href) ")";  in bootstrap-->
    content: none !important;
  }

    }
.none {
    display:none;
}
.radio-inline label{
  font-weight: normal;
}
.required{
  color: red;
}
</style>


