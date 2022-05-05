<div  style="text-align:left!important; border-radius: 15px 50px 50px 5px; background-color:#e7be9e; height: 50px; padding:5px 5px 5px 5px">
			<h4> SECTION II - About the Proposed Insured</h4>
		</div>
		<div  style="text-align:left!important">For Additional Insureds please complete an Additional application form for each individual separately.</div>
		<table class="test">
			<tr>
			  <td width="20%"><label>Name</label><input type="text" id="section2Firstname" name="section2Firstname" value="<?php echo $name; ?>" readonly></td>
			  <td width="28%"><label>E-Mail Address</label><input type="text" id="section2Email" name="section2Email" value="<?php if(!isset($_POST['section2Email'])) echo $email; ?>" readonly></td>
			  <td width="20%" ><label>Date of Birth</label><!-- <input type="text" class="dp1" id="section2DateofBirth" class="dp1" name="section2DateofBirth" value="<?php   //if(!isset($_POST['section2DateofBirth'])) echo date('m-d-Y', strtotime($_REQUEST['dob'])); ?>"> -->

			  	<input type="text" id="dob" name="" value="<?php echo date('M-d-Y', strtotime($_REQUEST['dob'])); ?>" readonly>
			  	<input type="hidden" id="dob" name="CustomerRequest[dob]" value="<?php echo date('M-d-Y', strtotime($_REQUEST['dob'])); ?>">
			  	
			  </td>
				 <td width="10%" valign="top"><label>Sex </label><br/><input type="radio" id="section2sex" name="section2sex" value="Male" <?php if ($sex =="Male") echo "checked";?>>&nbsp;Male<br/><input type="radio" id="section2sex" name="section2sex" value="Female" <?php if ($sex =="Female") echo "checked";?>>&nbsp;Female</td>  
				 <td width="30%" valign="top"><label>Smoker / Tobacco </label><br/><input type="radio" id="section2smoker" name="section2smoker" value="No" <?php if ($smoker =="No") echo "checked";?>>&nbsp;No<br/><input type="radio" id="section2smoker" name="section2smoker" value="Yes" <?php if ($smoker =="Yes") echo "checked";?>>&nbsp;Yes</td>             

			</tr>
			<tr bgcolor="#f2f2f2">
					  <td width="25%"><label>Country of Current Residence</label><input readonly="readonly" type="text" id="section2residence" name="section2residence" value="<?php if(!isset($_POST['section2residence'])) echo $residence; ?>"></td>
					  <td width="30%"><label>Mailing Address</label><input type="text" id="section2City" name="section2City" value="<?php if(isset($_POST['section2City'])) echo $_POST['section2City']; ?>" required></td>
					  <td width="20%"><label>City/State</label><input type="text" id="section2Country" name="section2Country" value="<?php if(isset($_POST['section2Country'])) echo $_POST['section2Country']; ?>" required></td>
					  <td width="30%" colspan="3"><label>Postal Code</label><input type="text" id="section2Zip" name="section2Zip" value="<?php if(isset($_POST['section2Zip'])) echo $_POST['section2Zip']; ?>" required></td>
			</tr>
			<tr>
						<td width="20%"><label>Country of Citizenship</label><input readonly="readonly" type="text" name="section2Citizen" id="section2Citizen" value="<?php if(!isset($_POST['section2Citizen'])) echo $citizenship; ?>"> 
			  			</td>
			  			<td width="10%">
			  				<label>State</label>
			  				<select name="state" id="state" class="">
  <option value="" selected="selected">Select a State</option>
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
			  			</td>
					  <td width="20%" valign="top"><label>Primary Phone Number</label>
					  	<input type="text" id="section2Phone1" name="section2Phone1" value="<?php if(!isset($_POST['section2Phone1'])) echo $phone; ?>" readonly>
					  </td>
					  <td width="20%" valign="top"><label>Alternate Phone Number</label><input type="text" id="section2Phone2" name="section2Phone2" value="<?php if(isset($_POST['section2Phone2'])) echo $_POST['section2Phone2']; ?>"></td>
					  <td width="15%" colspan="2"><label>Best Time to Call</label><br/>
						  <div class="form-inline">
							<div class="form-group"><input type="text" name="section2Form" id="section2Form" value="<?php if(isset($_POST['section2Form'])) echo $_POST['section2Form']; ?>" ></div>
						</div>
					</tr>
					<tr></tr>
					<tr>
						<td colspan="5"><strong>You will receive a phone call from us verifying your personal data.</strong></td>
					</tr>

			<tr>
					 <td width="5%"><label>Place of Birth</label><input type="text"  id="section2PlaceofBirth" name="section2PlaceofBirth" value="<?php if(isset($_POST['section2PlaceofBirth'])) echo $_POST['section2PlaceofBirth']; ?>" required></td>
					  <!--<td width="30%"><label>Social Security or Tax ID Number</label><input type="text" id="section2ssid" name="section2ssid" value="<?php if(isset($_POST['section2ssid'])) echo $_POST['section2ssid']; ?>"></td>
					  <td width="20%"><label>Earned Annual Income</label><input type="text" id="section2Earned" name="section2Earned" value="<?php if(isset($_POST['section2Earned'])) echo $_POST['section2Earned']; ?>"></td>  -->
					<!--  <td width="20%"><label>Net Worth</label><input type="text" id="section2NetWorth" name="section2NetWorth" value="<?php if(isset($_POST['section2NetWorth'])) echo $_POST['section2NetWorth']; ?>"></td>  -->
					 <td width="5%"><label>Occupation</label><input type="text" name="section2Occupation" id="section2Occupation" required></td>
					 <td width="20%"><label>Height</label><input type="text" name="ft" id="ft" style="max-width: 70px!important" required/>&nbsp;ft&nbsp;&nbsp;&nbsp;<input type="text" name="in" id="in" style="max-width: 70px!important" required/>&nbsp;in/cm </td>
					 <td width="40%" colspan="2"><label>Weight&nbsp;(lbs/kg)</label><input type="text" name="lbs" id="lbs" style="max-width: 100px!important" required/></td>

			</tr>
			
		<!--	<tr bgcolor="#f2f2f2">
			  <td width="25%"><label>Job Title</label><input type="text" name="section2Occupation" id="section2Occupation" > 
			  </td>
			  <td width="30%"><label>Employer</label><input type="text" id="section2Employer"  name="section2Employer"></td>
			  <td width="45%" colspan='2'><label>Nature of Business</label><input type="text" id="section2Business" name="section2Business"></td>
			</tr>-->
			
		<!-- <tr>
				<td colspan="2"><label>Height</label><input type="text" name="ft" id="ft" style="max-width: 100px!important" />&nbsp;ft.&nbsp;&nbsp;&nbsp;<input type="text" name="in" id="in" style="max-width: 100px!important"/>&nbsp;in/cm. </td>
				<td colspan="2"><label>Weight</label><input type="text" name="lbs" id="lbs" style="max-width: 100px!important"/>&nbsp;lbs/kg.</td>
			</tr>  -->
			
			<tr>
				<table>
					<tr></tr>
					<tr bgcolor="#f2f2f2">
						<td colspan="3">Are you taking any prescribed medication?&nbsp;&nbsp;<input type="radio" name="yesno"  value="yes" id="yes">&nbsp;Yes
						&nbsp;&nbsp;<input type="radio" name="yesno"  value="no" id="no">&nbsp;No</td>
					</tr>
					<tr></tr>
					<tr id="medicationYes" style="display:none">
						<td width="35%">Diagnosis / Medical Condition<input type="text" name="prescribedcondition" id="prescribedcondition"/></td>
						<td width="34%">Name of Medication<input type="text" name="prescribedmedication" id="prescribedmedication"/></td>
						<td width="25%">Daily Dosage<input type="text" name="prescribeddosage" id="prescribeddosage"/></td>
					</tr>
				</table>
			</tr>
			
			
			<tr>
				<table>
				<tr></tr><tr></tr>
					<tr>
						<td colspan="3">Have you been hospitalized or had surgery within the past 10 years?&nbsp;&nbsp;<input type="radio" name="yesno2"  value="yes2" id="yes2">&nbsp;Yes
						&nbsp;&nbsp;<input type="radio" name="yesno2"  value="no2" id="no2">&nbsp;No</td>
					</tr>
					
					<tr id="hospitalizesYes" style="display:none">
						<td width="35%">Diagnosis / Medical Condition<input type="text" name="hospitalizescondition" id="hospitalizescondition"/></td>
						<td width="34%">Dates of Treatment<input type="text" name="treatmentDate" id="treatmentDate"/></td>
						<td width="25%">Name and location of medical facility<input type="text" name="medicalFacility" id="medicalFacility"/></td>
					</tr>
					<tr></tr>
				</table>
			</tr>
			
			<tr></tr>
			<tr>
				<td colspan="5"><span style="padding-left:11px;">Approximate date of your next visit to the U.S.
				<input type="text"  name="nextvisit"/></span> <!-- class="dp1"  -->
				</td>
			</tr>
			
			<!--<tr>
				  <td colspan="4"><label>Digital Signature. <b style="color:red">*</b></label>
				  <p style="color:blue">To satisfy this legal requirement please scan or photograph the signature and photo page of your passport, residency permit
				  or EU ID card and upload the files here. Please also upload the same for all family members applying. Thank You.
				  </p>
				  <input type="file" id="section2File" name="section2File" ></td>
			</tr>-->
			
			<tr><br/><br/>
            <div  style="text-align:center!important">No payment necessary until final underwriting approval.</div>
			   
			</tr>


		</table>


