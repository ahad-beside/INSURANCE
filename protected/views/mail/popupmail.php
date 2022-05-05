<div  style="text-align:left!important; border-radius: 15px 50px 30px 5px; background-color:#ccc; height: 50px; padding:5px 5px 5px 5px">
			<h4> Application for Life Insurance<h4>
		</div>
<table class="test">
			
			<tr>
			  <td width="50%"><strong>Company</strong> (Choose the appropriate ONE).<br/>The Company indicated in this section is referred to as "the company".</td>
			 
			   <td width="50%">
				<h5><?php    echo $companyName; ?></h5>
			  </td>
			</tr>
		</table>
		
		<div  style="text-align:left!important; border-radius: 15px 50px 30px 5px; background-color:#ccc; height: 50px; padding:5px 5px 5px 5px">
	<h4>SECTION I - About the proposed coverage<h4>
</div>
	<table class="test">
		<tr>
		  <td width="50%"><strong>Face Amount:</strong>&nbsp;&nbsp;<?php echo $Section1Face; ?></td>
		  <td width="50%"><strong>Length of coverage:</strong>&nbsp;&nbsp;<?php echo $Section1Length ?></td>
		
	 </tr>
	</table>
	
	<div  style="text-align:left!important; border-radius: 15px 50px 30px 5px; background-color:#ccc; height: 50px; padding:5px 5px 5px 5px">
			<h4> SECTION II - About the Proposed Insured</h4>
		</div>
		<div  style="text-align:left!important">For Additional Insureds please complete the <strong>Additional Insureds Supplement</strong> form.</div>
		<table class="test">
			<tr>
			  <td width="25%"><strong>First Name:</strong>&nbsp;&nbsp;<?php echo $section2Firstname; ?></td>
			  <td width="30%"><strong>Middle Name:</strong>&nbsp;&nbsp; <?php echo $section2Middlename; ?></td>
			  <td width="45%" colspan='2'><strong>Last Name:</strong>&nbsp;&nbsp;<?php  echo $section2Lastname; ?></td>
			</tr>
			<tr>
					  <td width="25%"><strong>Residence:</strong>&nbsp;&nbsp;<?php echo $section2residence; ?></td>
					  <td width="30%"><strong>City:</strong>&nbsp;&nbsp;<?php echo $section2City; ?></td>
					  <td width="20%"><strong>Country:</strong>&nbsp;&nbsp;<?php echo $section2Country ?></td>
					  <td width="30%"><strong>Zip:</strong>&nbsp;&nbsp;<?php echo $section2Zip; ?></td>
			</tr>
			<tr>
			  <td width="25%"><strong>Citizenship:</strong>&nbsp;&nbsp;<?php echo $citizenship; ?></td>
			  <td width="30%"><strong>Date of Birth:</strong>&nbsp;&nbsp;<?php echo $section2DateofBirth; ?></td>
			  <td width="45%" colspan='2'><strong>E-Mail Address:</strong>&nbsp;&nbsp;<?php  echo $section2Email; ?></td>
			</tr>
			<tr>
					  <td width="25%" valign="top"><strong>Primary Phone Number:</strong><?php echo $section2Phone1; ?></td>
					  <td width="30%" valign="top"><strong>Alternate Phone Number:</strong><?php echo $section2Phone2 ?></td>
					  <td width="28%"><strong>Preferred Time to Call</strong><br/>
						  <div class="form-inline">
							<div class="form-group">From: &nbsp;&nbsp;<?php echo $section2Form." ".$Section2formAM; ?></div>					
							<div class="form-group">To:&nbsp;&nbsp;<?php echo $section2To." ".$Section2toPM; ?></div>
						 </div>
					  <td width="20%" valign="top"><strong>Sex:</strong>&nbsp;&nbsp;<?php echo $section2sex;?></td>
			</tr>
			<tr>
					  <td width="25%"><strong>Place of Birth:</strong>&nbsp;&nbsp;<?php echo $section2PlaceofBirth; ?></td>
					  <td width="30%"><strong>Social Security or Tax ID Number:</strong>&nbsp;&nbsp;<?php  echo $section2ssid; ?></td>
					  <td width="20%"><strong>Earned Annual Income:</strong>&nbsp;&nbsp;<?php echo $section2Earned; ?></td>
					  <td width="20%"><strong>Net Worth:</strong>&nbsp;&nbsp;<?php echo $section2NetWorth; ?></td>
			</tr>
			
			<tr>
			  <td width="25%"><strong>Occupation:</strong>&nbsp;&nbsp;<?php echo section2Occupation; ?> </td>
			  <td width="30%"><strong>Employer:</strong>&nbsp;&nbsp;<?php echo $section2Employer; ?></td>
			  <td width="45%" colspan='2'><strong>Nature of Business:</strong><?php echo $section2Business; ?></td>
			</tr>
			
			<tr>
				<td colspan="2"><strong>Height:</strong>&nbsp;&nbsp;<?php echo $ft; ?>&nbsp;ft.&nbsp;&nbsp;&nbsp;<?php echo $in; ?>&nbsp;in. </td>
				<td colspan="2"><strong>weight:</strong>&nbsp;&nbsp;<?php echo $lbs; ?>&nbsp;lbs</td>
			</tr>
			
			<tr>
				<table>
				<tr></tr>
					<tr>
						<td colspan="3">Are you taking prescribed medication?&nbsp;&nbsp; <?php echo $yesno; ?></td>
					</tr>
					<?php if($yesno=="yes") {?>
					<tr></tr>
					<tr id="medicationYes" style="display:none">
						<td>Diagnosis / Medical Condition:&nbsp;&nbsp; <?php echo prescribedcondition; ?></td>
						<td>Name of Medication:&nbsp;&nbsp;<?php echo $prescribedmedication; ?></td>
						<td>Daily Dosage:&nbsp;&nbsp;<?php echo prescribeddosage; ?></td>
					</tr>
					<?php } ?>
				</table>
			</tr>
			
			
			<tr>
				<table>
				<tr></tr><tr></tr>
					<tr>
						<td colspan="3">Have you been hospitalizes or had surgery within the past 10 years? <?php  if($yesno2=="yes2") echo "Yes"; else echo "No"; ?></td>
					</tr>
					
					<?php  if($yesno2=="yes2"){ ?>
					<tr id="hospitalizesYes" style="display:none">
						<td>Diagnosis / Medical Condition:&nbsp;&nbsp;<?php echo $hospitalizescondition; ?></td>
						<td>Dates of Treatment:&nbsp;&nbsp;<?php echo $treatmentDate; ?></td>
						<td>Name and location of medical facility:&nbsp;&nbsp;<?php echo $medicalFacility ?></td>
					</tr>
					
					<?php } ?>
					<tr></tr>
				</table>
			</tr>
			
			<tr></tr>
			<tr>
				<td colspan="4">Approximate Date of your next visit to the U.S.:&nbsp;&nbsp;
				<?php echo $nextvisit; ?>
				</td>
				
			</tr>
			
			<tr>
				  <td colspan="4"><label>Digital Signature. <b style="color:red">*</b></label>
				  <p style="color:blue">To satisfy this legal requirement please scan or photograph the signature and photo page of your passport, residency permit
				  or EU ID card and upload the files here. Please also upload the same for all family members applying. Thank You.
				  </p>
				  <img src="$section2File"/>
				  <br/><?php  echo $section2File ?></td>
			</tr>
			

		</table>