<!-- mailDesignStart -->
<div class="mailDesign" style="width: 600px; margin: auto; border: 1px solid #ddd; padding: 0px;">
  <div style="width: 100%; display: inline-block; background: #184b9a; color: #fff; font-size: 12px;">
    <table style="width: 100%; font-family: arial; margin-top: 0px; padding: 0px; margin-bottom: 0px">
      <tr>
        <td width="60%" style="padding: 3px;"><img style="width: 300px;" src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/logo-1.png"></td>
        <td width="40%" style="text-align: right; padding: 3px;"> Call us Now: +1.616.723.8494 </td>
      </tr>
    </table>
  </div>
  <table style="width: 100%; background: #fff; font-family: arial; margin-top: 0px; font-size: 12px;">
    <tr>
      <td style="text-align: center; padding-bottom: 10px;">
        <img style="width: 250px;" src="http://lifeinsuranceabroad.com/quote/insurance/upload/<?=$request['companyImage']; ?>"><br> <?=$request['companyName']; ?> 
      </td>
    </tr>
    <tr>
      <td style="padding: 0px 8px; background: #f2f2f2">
        <div style="width: 100%; display: inline-block;">
        <div>
          <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">Proposed Insured</h2>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Face Amount</b><br>$ <?= number_format($request['Section1Face']).'.'; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Length of Coverage</b><br><?=$request['Section1Length']; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Proposed Annual Cost</b><br><?= $request['section1AnnualRate']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Name</b><br><?= $request['section2Firstname']; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">E-mail Address</b><br><?= $request['section2Email']; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Date Of Birth</b><br><?= $request['CustomerRequest']['dob']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Place of Birth (State/Country)</b><br><?= $request['section2PlaceofBirth']; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b>Occupation</b><br><?= $request['section2Occupation']; ?>
            </td>
            <td style="padding: 0px; width: 15%;">
              <b style="color: #333">Sex</b><br><?= $request['section2sex']; ?>
            </td>
            <td style="padding: 0px; width: 15%;">
              <b style="color: #333">Smoker </b><br><?= $request['section2smoker']; ?>
            </td>
          </tr>
        </table>
        </div>
        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">In Your own words, What are 
Your needs for the purchase of this Life Insurance policy?</b><br><?= $request['proposed_what_are_you']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 25%;">
              <b style="color: #333">Height (inch/cm)</b><br><?= $request['ft']; ?>
            </td>
            <td style="padding: 0px; width: 25%;">
              <b style="color: #333">Weight (lbs/kg)</b><br><?= $request['lbs']; ?>
            </td>
            <td style="padding: 0px; width: 25%;">
              <b style="color: #333">Marital Status</b><br><?= $request['maritialStatus']; ?>
            </td>
            <td style="padding: 0px; width: 25%;">
              <b style="color: #333">Number of Children: </b><br><?= $request['numberofchield']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Name of Beneficiary</b><br><?= $request['nameofbeneficiary']; ?>
            </td>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Relationship to the proposed Insured</b><br><?= $request['relation']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Name of Policy Owner or Trust</b><br><?= $request['policy_owner']; ?>
            </td>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Owner's Date of Birth or Trust Date of Execution</b><br><?= $request['owner_date_of_birth']; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Are you taking any Prescription medication?</b><br><?= $request['yesno']; ?><br>
              <div style="height: 5px;">&nbsp;</div>
              <?php if($request['yesno']=='yes' || $request['yesno']=='Yes'){?>
              	<b style="color: #333">Diagnosis / Medical Condition</b><br><?= $request['prescribedcondition']; ?><br>
                <div style="height: 5px;">&nbsp;</div>
              	<b style="color: #333">Name of Medication</b><br><?= $request['prescribedmedication']; ?><br>
                <div style="height: 5px;">&nbsp;</div>
              	<b style="color: #333">Daily Dosage</b><br><?= $request['prescribeddosage']; ?>
              <?php } ?>
            </td>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Have you been hospitalized or had surgery within the past 10 years?</b><br><?= $request['yesno2']; ?>
              <br>
              <div style="height: 5px;">&nbsp;</div>
              <?php if($request['yesno2']=='yes' || $request['yesno2']=='Yes' || $request['yesno2']=='yes2'){?>
              	<b style="color: #333">Diagnosis / Medical Condition</b><br><?= $request['hospitalizescondition']; ?><br>
                <div style="height: 5px;">&nbsp;</div>
              	<b style="color: #333">Dates of Treatment</b><br><?= $request['treatmentDate']; ?><br>
                <div style="height: 5px;">&nbsp;</div>
              	<b style="color: #333">Name and location of medical facility</b><br><?= $request['medicalFacility']; ?>
              <?php } ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 40%;">
              <b style="color: #333">Country or Countries of Citizenship</b><br><?= $request['section2Citizen']; ?>
            </td>
            <td style="padding: 0px; width: 40%;">
              <b style="color: #333">Owner or Trust's Legal Address</b><br><?= $request['proposed_owner_trust']; ?>
            </td>
            <td style="padding: 0px; width: 20%;">
              <b style="color: #333">State</b><br><?= $request['proposed_state']; ?>
            </td>
          </tr>
        </table>
        <div style="color: #ff0000; padding-bottom: 5px;">Non-U.S. Citizens are required to maintain a current U.S. bank Account to qualify for this policy</div>
        </div>

        <div style="width: 100%; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Do you have a current bank account in the U.S.?</b><br><?= $request['bank_account']; ?>
            </td>
            <td style="padding: 0px; width: 50%;">
              <b style="color: #333">Driver License # & State</b><br><?= $request['driver_license']; ?>
            </td>
          </tr>
        </table>
        </div>

      </div>
      </td>
    </tr>

    <tr>
      <td style="padding: 0px 8px; background: #fff">
        <div style="width: 100%; display: inline-block; margin-bottom: 10px;">
          <div style="margin-top: 10px;">
            <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">Current Full-Time Residence Address Abroad</h2>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">Street and Number</b><br><?= $request['current_street_number']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">Town and City</b><br><?= $request['current_town_city']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">Post Code</b><br><?= $request['current_post_code']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">Country</b><br><?= $request['section2residence']; ?>
                </td>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">Home/Mobile telephone number Abroad</b><br><?= $request['section2Phone1']; ?>
                </td>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">Best day & time to Call</b><br><?= $request['section2Form']; ?>
                </td>
              </tr>
            </table>
          </div>
          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;" valign="top">
                  <b style="color: #333">In Your own words, What is the purpose and planned duration of your current residency abroad?</b><br><?= $request['what_is_purpose']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;" valign="top">
                  <b style="color: #333">What % of the Year do You Reside at this Address?</b><br><?= $request['year_address']; ?>
                </td>
                
              </tr>
            </table>
          </div>
          <div style="width: 100%;">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;" valign="top">
                  <b style="color: #333">Do you have current Business interests or own property in the U.S.?</b><br><?= $request['business_interest']; ?><br>
                  <?php if($request['business_interest']=='Yes'){?>
                  	<b style="color: #333">Please provide details, if any</b><br>
                  	<?= $request['business_interest_text']; ?>
                  <?php } ?>
                </td>
                
              </tr>
            </table>
          </div>

        </div>
      </td>
    </tr>

    <tr>
      <td style="padding: 0px 8px; background: #f2f2f2">
        <div style="width: 100%; display: inline-block;">
          <div style="margin-top: 10px;">
            <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">U.S. Mailing Address</h2>
          </div>

          <div style="color: #ff0000; padding-top: 5px;">
              To qualify for this Life Insurance policy, you must receive mail in your name at this address
            </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">Number and Street</b><br><?= $request['us_number_street']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">City or Town</b><br><?= $request['us_city_town']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b style="color: #333">State</b><br><?= $request['us_state']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">Zip Code</b><br><?= $request['us_zip']; ?>
                </td>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">U.S. Phone Number</b><br><?= $request['us_phone']; ?>
                </td>
                <td style="padding: 0px; width: 33%;" valign="top">
                  <b style="color: #333">Best day & time to Call?</b><br><?= $request['us_best_timetocall']; ?>
                </td>
              </tr>
            </table>
            <div style="color: #ff0000; padding-top: 5px;">
              To Qualify for this Life Insurance Policy, you are required to take a Paramedic Exam with a Blood and Urine sample at your convenience and at our expense in the United States only.
            </div>
            <div style="color: #000; padding-top: 5px;">
              To Schedule your exam in advance of your next visit, please provide us with the Following: 
            </div>
          </div>
          
         
        </div>
      </td>
    </tr>

    <tr>
      <td style="padding: 0px 8px; background: #fff">
        <div style="width: 100%; display: inline-block; margin-bottom: 10px;">
          <div style="margin-top: 10px;">
            <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">
              Primary U.S. Address for Scheduling your Paramedic Exam <div style="font-size: 16px">(If different than Above)</div>
            </h2>
          </div>
          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b>Number and Street</b><br><?= $request['primary_street_number']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>City or Town</b><br><?= $request['primary_city_town']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>State</b><br><?= $request['primary_state']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b>Zip Code</b><br><?= $request['primary_zip']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Phone Number at this Location</b><br><?= $request['primary_phone']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Best day & time to Call?</b><br><?= $request['primary_best_timetocall']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 50%;">
                  <b>Your Date of Arrival at this Address</b><br><?= $request['date_arrival']; ?>
                </td>
                <td style="padding: 0px; width: 50%;">
                  <b>Your Date of Departure from this Address</b><br><?= $request['date_departure']; ?>
                </td>
                
              </tr>
            </table>
          </div>
          <div style="width: 100%; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;">
                  <b>If you are unable to schedule your Paramedic Exam at Your U.S. Mailing Address, kindly explain</b><br><?= $request['schedule_your_aramedic']; ?>
                </td>
                
              </tr>
            </table>
          </div>
        </div>
      </td>
    </tr>

    <tr>
      <td style="padding: 0px 8px; background: #f2f2f2">
        <div style="width: 100%; display: inline-block;">
          <div style="margin-top: 10px;">
            <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">
              Business Address
            </h2>
          </div>
          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b>Name of Business or Employer</b><br><?= $request['business_name']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Street and Number</b><br><?= $request['business_street']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>City or Town, State or Region</b><br><?= $request['business_city_town']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b>Zip or Post Code</b><br><?= $request['business_zip']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Country</b><br><?= $request['business_country']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Websites</b><br><?= $request['business_website']; ?>
                </td>
              </tr>
            </table>
          </div>

          
        </div>
      </td>
    </tr>


    <tr>
      <td style="padding: 0px 8px; background: #fff">
        <div style="width: 100%; display: inline-block;">
          <div style="margin-top: 10px;">
            <h2 style="font-size: 18px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">
              Other Information
            </h2>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;">
                  <b>
Is this policy being purchased as part of an employer owned life insurance program where the employer is the direct or indirect beneficiary of the policy?</b><br><?= $request['is_policy_purchased']; ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 100%;">
                  <b>Additional Benefits and Riders: (If applicable)</b><br><?= implode('<br>',$_REQUEST['benifits_riders']); ?>
                </td>
              </tr>
            </table>
          </div>

          <div style="width: 100%; padding: 7px 0px">
            <table style="width: 100%">
              <tr>
                <td style="padding: 0px; width: 33%;">
                  <b>How did you hear about us?</b><br><?= $request['hear_about']; ?><br>
                  <?php if($request['hear_about']=='Facebook' || $request['hear_about']=='Google' || $request['hear_about']=='AmCham' || $request['hear_about']=='In Flight Magazine' || $request['hear_about']=='Other'){?>
                  	<?=$request['hear_about_text']?>
                  <?php } ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Member Discounts may Apply</b><br><?= $request['member_discount']; ?>
                </td>
                <td style="padding: 0px; width: 33%;">
                  <b>Enter your Member Reference Code# (If applicable)</b><br><?= $request['member_reference']; ?>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </td>
    </tr>
  </table>

  <div style="width: 100%; background: #000; display:table; padding: 7px 0px">
    <table style="width: 250px; text-align: center; font-size: 12px; margin: 0px auto; padding: 0; ">
        <tr>
          <td style="text-align: center; width: 25%">
            <a href="https://www.facebook.com/Life-Insurance-Abroad-1712780512309295/" target="_blank"><img src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/fb.png" style="width: 30px;"></a>
          </td>
           <td width="25%" style="text-align: center">
            <a href="https://plus.google.com/118247925340532821810" target="_blank"><img src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/g+.png" style="width: 30px;"></a>
          </td>
          <td style="text-align: center; width: 25%">
            <a href="https://www.linkedin.com/company/life-insurance-abroad?trk=biz-companies-cym" target="_blank"><img src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/lin.png" style="width: 30px;"></a>
          </td>
           <td style="text-align: center; width: 25%">
            <a href="skype:live:info_588801" target="_blank"><img src="http://lifeinsuranceabroad.com/wp-content/uploads/2016/12/skype-1.png" style="width: 30px;"></a>
          </td>
        </tr>
    </table>
  </div>
  <div style="width: 100%; background: #333; display:table; padding: 7px 0px">
     <div style="text-align: center; color: #fff; font-size: 12px;">© <?=date('Y')?> Hamilton Hudson Ltd. All Rights Reserved</div>
  </div>


</div>
<!-- mailDesignEnd -->