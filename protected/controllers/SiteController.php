<?php
class SiteController extends Controller {
    public $layout = '//layouts/main', $telephone, $call;
    /**
     * Declares class-based actions.
     */
    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page' => array(
                'class' => 'CViewAction',
            ),
            'oauth' => array(
                // the list of additional properties of this action is below
                'class' => 'ext.hoauth.HOAuthAction',
                // Yii alias for your user's model, or simply class name, when it already on yii's import path
                // default value of this property is: User
                'model' => 'User',
                // map model attributes to attributes of user's social profile
                // model attribute => profile attribute
                // the list of avaible attributes is below
                'attributes' => array(
                    'email' => 'email',
                    'password' => md5('password'),
                    'repeatpassword' => md5('password'),
                    'first_name' => 'firstName',
                    'last_name' => 'lastName',
                    'gender' => 'genderShort',
                    'email_verified' => 1,
                    'role' => 2,
                    'active' => 1,
                    'from' => 0,
                ),
            ),
            // this is an admin action that will help you to configure HybridAuth 
            // (you must delete this action, when you'll be ready with configuration, or 
            // specify rules for admin role. User shouldn't have access to this action!)
            'oauthadmin' => array(
                'class' => 'ext.hoauth.HOAuthAdminAction',
            ),
        );
    }

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex() {
        $this->render('index');
    }

    public function actionResult() {
		if(isset($_POST['submit'])){
			$name= $_REQUEST['name'];
			$birthMonth= $_REQUEST['birthMonth'];
			$birthDay= $_REQUEST['birthDay'];
			$birthYear= $_REQUEST['birthYear'];
			$dob= $birthMonth."/".$birthDay."/".$birthYear;
			
			$gender= $_REQUEST['sex'];
			//echo $gender;
			$smoker= $_REQUEST['smoker'];
			$type= $_REQUEST['type'];
			//echo $type;  exit();
			$amount= $_REQUEST['amount'];
			$amount1= $_REQUEST['amount'];
			//echo $amount; exit();
			$health= $_REQUEST['health'];
			$citizenship= $_REQUEST['citizenship'];
			$residence= $_REQUEST['residence']; 
			$email= $_REQUEST['email'];
			$phone= $_REQUEST['phone'];

			$today=date('Y');
		   $pdob=date('Y', strtotime($birthYear));
		   $age = $today - $pdob;
		   $age = $today - $birthYear;
		   $age=(int)$age;
		}
	
	
	//start mail send to customar
		Yii::app()->session['adminemail'] = "info@hamiltonhudson.com";  //info@hamiltonhudson.com
				$mailCompare = new YiiMailer('comparemail',  array('name'=>$name, 'birthMonth'=>$birthMonth,  'birthDay'=>$birthDay, 'birthYear'=>$birthYear, 'dob'=>$dob, 'gender'=>$gender, 'smoker'=>$smoker, 'type'=>$type, 'amount'=>$amount, 'health'=> $health, 'citizenship'=>$citizenship,
		'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'today'=>$today, 'pdob'=>$pdob, 'age'=>$age,
		));
				$mailCompare->setLayout('mail');
				$mailCompare->setFrom('info@hamiltonhudson.com');
				$mailCompare->setSubject($name.' - Life Insurance Request');
				$mailCompare->setTo($email);
				$mailCompare->setCc(array('lifeinsuranceabroad@gmail.com'));
				
				// $mail->setSmtp('mail.deal.af', 25, 'non-secure', false, 'info@deal.af', '@212121@');
				$mailCompare->send();
	// end mail send to customer
	
	
        $this->render('result', array('name'=>$name, 'birthMonth'=>$birthMonth,  'birthDay'=>$birthDay, 'birthYear'=>$birthYear, 'dob'=>$dob,
		'gender'=>$gender, 'smoker'=>$smoker, 'type'=>$type, 'amount'=>$amount, 'health'=> $health, 'citizenship'=>$citizenship,
		'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'today'=>$today, 'pdob'=>$pdob, 'age'=>$age,
		));
    }
	
	  public function actionResult2() {
			$name= $_REQUEST['name'];
			$dob= $_REQUEST['dob'];
			
			$gender= $_REQUEST['gender'];
		//	echo $gender; exit();
			$smoker= $_REQUEST['smoker'];
			$type= $_REQUEST['type'];
			//echo $type;  exit();
			$amount= $_REQUEST['amount'];
			$amount1= $_REQUEST['amount'];
			//echo $amount; exit();
			$health= $_REQUEST['health'];
			$citizenship= $_REQUEST['citizenship'];
			$residence= $_REQUEST['residence']; 
			$email= $_REQUEST['email'];
			$phone= $_REQUEST['phone'];
			$age= $_REQUEST['age'];

	
        $this->render('result', array('name'=>$name, 'birthMonth'=>$birthMonth,  'birthDay'=>$birthDay, 'birthYear'=>$birthYear, 'dob'=>$dob,
		'gender'=>$gender, 'smoker'=>$smoker, 'type'=>$type, 'amount'=>$amount, 'health'=> $health, 'citizenship'=>$citizenship,
		'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'today'=>$today, 'pdob'=>$pdob, 'age'=>$age,
		));
    }

    public function actionRequest() {
        $model = new CustomerRequest;
		if (isset($_POST['submit'])) {
			//echo date('Y-m-d',strtotime($_POST['CustomerRequest']['dob']));exit;
		    $nextvisit = $_REQUEST['nextvisit'];
			//$telephone = $_POST['telephone'];
			//$call = $_POST['call'];

			//print_r($_REQUEST);exit;
				//$signature = $_FILES["section2File"]["name"];
				//$newname=Yii::app()->baseUrl."/signature/".$signature;
				//$copied = copy($_FILES['section2File']['tmp_name'], $newname); 
			//move_uploaded_file($signature,Yii::app()->baseUrl."/signature/".$signature);
			//move_uploaded_file($_FILES["section2File"]["tmp_name"],"/signature/ . $_FILES["section2File"]["name"]);
			move_uploaded_file($_FILES["section2File"]["tmp_name"],Yii::app()->baseUrl."/signature/ ". $_FILES["section2File"]["name"]);
			
			$companyName = $_REQUEST['companyName'];
			$companyImage =$_REQUEST['companyImage']; 
			$Section1Face = $_REQUEST['Section1Face'];

			$section1AnnualRate = $_REQUEST['section1AnnualRate'];
			
			$section2Firstname = $_REQUEST['section2Firstname'];
			$Section1Length = $_REQUEST['Section1Length'];
			$section2Middlename = $_REQUEST['section2Middlename'];
			$section2Lastname = $_REQUEST['section2Lastname'];
			$section2residence = $_REQUEST['section2residence'];
			$section2City = $_REQUEST['section2City'];
			$section2Country = $_REQUEST['section2Country']; 
			$section2Zip = $_REQUEST['section2Zip'];
			$section2Citizen = $_REQUEST['section2Citizen'];
			$section2DateofBirth = $_POST['CustomerRequest']['dob'];
			$section2Email = $_REQUEST['section2Email'];
			$section2Phone1 = $_REQUEST['section2Phone1'];
			$section2Phone2 = $_REQUEST['section2Phone2'];
			
			$section2Form = $_REQUEST['section2Form'];  
			$Section2formAM = $_REQUEST['Section2formAM'];
			$section2To = $_REQUEST['section2To'];  
			$Section2toPM = $_REQUEST['Section2toPM'];  
			
			$section2sex = $_REQUEST['section2sex'];
			$section2smoker = $_REQUEST['section2smoker'];
			$section2PlaceofBirth = $_REQUEST['section2PlaceofBirth'];
			$section2ssid = $_REQUEST['section2ssid'];
			$section2Earned = $_REQUEST['section2Earned'];
			$section2NetWorth = $_REQUEST['section2NetWorth'];
			$section2Occupation = $_REQUEST['section2Occupation'];
			$section2Employer = $_REQUEST['section2Employer'];
			$section2Business = $_REQUEST['section2Business'];
			
			$ft = $_REQUEST['ft'];
			$in = $_REQUEST['in'];
			$lbs = $_REQUEST['lbs'];
			
			$yesno = $_REQUEST['yesno'];
			$prescribedcondition = $_REQUEST['prescribedcondition'];
			$prescribedmedication = $_REQUEST['prescribedmedication'];
			$prescribeddosage = $_REQUEST['prescribeddosage'];
			
			$yesno2 = $_REQUEST['yesno2'];
			$hospitalizescondition = $_REQUEST['hospitalizescondition'];
			$treatmentDate = $_REQUEST['treatmentDate'];
			$medicalFacility = $_REQUEST['medicalFacility'];
			
			$insuranceID = $_REQUEST['id'];
			$name = $_GET['name'];
			$dob = $_POST['CustomerRequest']['dob'];
			$birthDay = $_GET['birthDay'];
			$age = $_GET['age'];
			$gender = $_GET['sex'];
			$smoker = $_GET['smoker'];
			$type = $_GET['type'];
			$citizenship = $_GET['citizenship'];
			$residence = $_GET['residence'];
			$email = $_GET['email'];
			$phone = $_GET['phone'];
			$model->insurance_id = $insuranceID;
			$model->name = $name;
			Yii::app()->session['name'] = $name;
			$model->email = $email;
			Yii::app()->session['email'] = $email;
			$model->phone = $phone;
			$model->dob = date('Y-m-d',strtotime($dob));
			$model->age = $age;
			$model->gender = $gender;
			$model->smoker = $smoker;
			$model->citizen = $citizenship;
			$model->residence = $residence;
			$model->draft = 'No';
			if ($model->save()) {
				//---- start admin mail send ------------------
				Yii::app()->session['adminemail'] = "info@hamiltonhudson.com"; 
				 //info@hamiltonhudson.com
				// $mail = new YiiMailer('adminmail', array('companyName' => $companyName, 'companyImage'=>$companyImage, 'Section1Face' => $Section1Face, 'section1AnnualRate'=>$section1AnnualRate,
				// 'Section1Length'=>$Section1Length, 'section2Firstname'=>$section2Firstname, 'section2Middlename'=>$section2Middlename, 'section2Lastname'=>$section2Lastname,
				// 'section2residence' => $section2residence, 'section2City' => $section2City,'section2Country' => $section2Country,			
				// 'section2Zip' => $section2Zip, 'section2Citizen' => $section2Citizen, 'section2DateofBirth' => $section2DateofBirth,
			 //    'section2Email' => $section2Email, 'section2Phone1' => $section2Phone1,	'section2Phone2' => $section2Phone2,
				// 'section2Form' => $section2Form, 'Section2formAM' => $Section2formAM, 'section2To' => $section2To,
				// 'Section2toPM' => $Section2toPM, 'section2sex' => $section2sex,'section2smoker' => $section2smoker,	'section2PlaceofBirth' => $section2PlaceofBirth,
				// 'section2ssid' => $section2ssid, 'section2Earned' => $section2Earned, 'section2NetWorth' => $section2NetWorth,
				// 'section2NetWorth' => $section2NetWorth, 'section2Occupation' => $section2Occupation, 'section2Employer' => $section2Employer,  'nextvisit' => $nextvisit,
				// 'section2Business' => $section2Business, 'ft' => $ft, 'in' => $in, 'lbs' => $lbs, 'yesno' => $yesno,
				// 'prescribedcondition' => $prescribedcondition, 'prescribedmedication' => $prescribedmedication,
				// 'prescribeddosage' => $prescribeddosage, 'yesno2' => $yesno2, 'hospitalizescondition' => $hospitalizescondition,
				// 'treatmentDate' => $treatmentDate, 'medicalFacility' => $medicalFacility,'citizenship' => $citizenship,'state' => $_REQUEST['state']
				// ));
				// $this->render('/mail/adminmail', array('request' => $_REQUEST));
				// Yii::app()->end();
				$mail = new YiiMailer('adminmail', array('request' => $_REQUEST));
				$mail->setLayout('mail');
				$mail->setFrom(Yii::app()->session['adminemail']);
				$mail->setSubject($name.' - LIA: NEW BUSINESS! - Application!');
				$mail->setTo(array('info@hamiltonhudson.com', 'lifeinsuranceabroad@gmail.com', 'anup@coder71.com'));
				//$mail->setTo(array('jalil@coder71.com', 'anup@coder71.com'));
				
				// $mail->setSmtp('mail.deal.af', 25, 'non-secure', false, 'info@deal.af', '@212121@');
				$mail->send();
				//---- end admin mail send ------------------
				
				
				
				//---- start customer mail send ------------------
				$mailCustomer = new YiiMailer('customermail', array('section2Firstname'=>$section2Firstname, 'section2Middlename'=>$section2Middlename, 'section2Lastname'=>$section2Lastname));
				$mailCustomer->setLayout('mail');
				$mailCustomer->setFrom('info@hamiltonhudson.com');  
				$mailCustomer->setSubject('LifeInsuranceAbroad.com has received your application');
				$mailCustomer->setTo(Yii::app()->session['email']);
				// $mail->setSmtp('mail.deal.af', 25, 'non-secure', false, 'info@deal.af', '@212121@');
				$mailCustomer->send();
				//---- end admin mail send ------------------
				
				
				// 				Yii::app()->user->setFlash('success', "Thank You for submitting your Life Insurance application short-form.<br>
// A confirmation has been sent to your email address and our customer service<br> representative will phone you shorty to verify your submitted data and provide you with<br> further instructions.<br> Please feel free to call on us anytime<br> +420. 777 322 522 or
// +1.616.723.8494 or email us at info@hamiltonhudson.com<br>
// <br>Thank You again for Choosing LifeInsuanceAbroad.com the Intelligent Choice for your Financial Protection");
				Yii::app()->user->setFlash('success', "Thank You for taking the time to complete this important on-line application form. For your protection, we will send you the paper version of this completed form
<br>as an editable PDF.<br> <br> When you receive this file via email, kindly open the file and <br>
enter the following sensitive data:<br>social security number, approximate annual income, approximate net worth, the date <br>
and complete any other relevant questions on this form.<br>
Print out the completed form, sign and date where requested, scan the finished form<br>
and email it back to us for review home office submission. <br><br>Please feel free to contact us Anytie with any Questions or Concerns.");
				//$this->redirect(array('request'));
				$this->redirect(array('success'));
			}
		}elseif (isset($_POST['submitLater'])) {
		        $nextvisit = $_REQUEST['nextvisit'];
			move_uploaded_file($_FILES["section2File"]["tmp_name"],Yii::app()->baseUrl."/signature/ ". $_FILES["section2File"]["name"]);
			
			$companyName = $_REQUEST['companyName'];
			$companyImage =$_REQUEST['companyImage']; 
			$Section1Face = $_REQUEST['Section1Face'];

			$section1AnnualRate = $_REQUEST['section1AnnualRate'];
			
			$section2Firstname = $_REQUEST['section2Firstname'];
			$Section1Length = $_REQUEST['Section1Length'];
			$section2Middlename = $_REQUEST['section2Middlename'];
			$section2Lastname = $_REQUEST['section2Lastname'];
			$section2residence = $_REQUEST['section2residence'];
			$section2City = $_REQUEST['section2City'];
			$section2Country = $_REQUEST['section2Country']; 
			$section2Zip = $_REQUEST['section2Zip'];
			$section2Citizen = $_REQUEST['section2Citizen'];
			$section2DateofBirth = $_POST['CustomerRequest']['dob'];
			$section2Email = $_REQUEST['section2Email'];
			$section2Phone1 = $_REQUEST['section2Phone1'];
			$section2Phone2 = $_REQUEST['section2Phone2'];
			
			$section2Form = $_REQUEST['section2Form'];  
			$Section2formAM = $_REQUEST['Section2formAM'];
			$section2To = $_REQUEST['section2To'];  
			$Section2toPM = $_REQUEST['Section2toPM'];  
			
			$section2sex = $_REQUEST['section2sex'];
			$section2PlaceofBirth = $_REQUEST['section2PlaceofBirth'];
			$section2ssid = $_REQUEST['section2ssid'];
			$section2Earned = $_REQUEST['section2Earned'];
			$section2NetWorth = $_REQUEST['section2NetWorth'];
			$section2Occupation = $_REQUEST['section2Occupation'];
			$section2Employer = $_REQUEST['section2Employer'];
			$section2Business = $_REQUEST['section2Business'];
			
			$ft = $_REQUEST['ft'];
			$in = $_REQUEST['in'];
			$lbs = $_REQUEST['lbs'];
			
			$yesno = $_REQUEST['yesno'];
			$prescribedcondition = $_REQUEST['prescribedcondition'];
			$prescribedmedication = $_REQUEST['prescribedmedication'];
			$prescribeddosage = $_REQUEST['prescribeddosage'];
			
			$yesno2 = $_REQUEST['yesno2'];
			$hospitalizescondition = $_REQUEST['hospitalizescondition'];
			$treatmentDate = $_REQUEST['treatmentDate'];
			$medicalFacility = $_REQUEST['medicalFacility'];
			
			$insuranceID = $_REQUEST['id'];
			$name = $_GET['name'];
			$dob = $_POST['CustomerRequest']['dob'];
			$birthDay = $_GET['birthDay'];
			$age = $_GET['age'];
			$gender = $_GET['sex'];
			$smoker = $_GET['smoker'];
			$type = $_GET['type'];
			$citizenship = $_GET['citizenship'];
			$residence = $_GET['residence'];
			$email = $_GET['email'];
			$phone = $_GET['phone'];
			$model->insurance_id = $insuranceID;
			$model->name = $name;
			Yii::app()->session['name'] = $name;
			$model->email = $email;
			Yii::app()->session['email'] = $email;
			$model->phone = $phone;
			$model->dob = date('Y-m-d',strtotime($dob));
			$model->age = $age;
			$model->gender = $gender;
			$model->smoker = $smoker;
			$model->citizen = $citizenship;
			$model->residence = $residence;
			$model->draft = 'Yes';
			if ($model->save()) {
				//---- start customer mail send ------------------
				$mailCustomer = new YiiMailer('customermailLater', array('section2Firstname'=>$section2Firstname, 'section2Middlename'=>$section2Middlename, 'section2Lastname'=>$section2Lastname,'id'=>$model->id,'amount'=>$_POST['Section1Face'],'type'=>$_POST['Section1Length'],'insuranceID'=>$insuranceID,'section1AnnualRate'=>$section1AnnualRate));

				$mailCustomer->setLayout('mail');
				$mailCustomer->setFrom('info@hamiltonhudson.com');  
				$mailCustomer->setSubject('LifeInsuranceAbroad.com has received your application');
				$mailCustomer->setTo(Yii::app()->session['email']);
				// $mail->setSmtp('mail.deal.af', 25, 'non-secure', false, 'info@deal.af', '@212121@');
				//$mailCustomer->setSmtp('smtp.zoho.com', 26, 'ssl', false, 'anupist726@gmail.com', 'adminAnuproy123');
				$mailCustomer->send();
				//---- end admin mail send ------------------
				// $id=base64_encode(CJSON::encode(array('id'=>$model->id)));
    //           	$draftUrl=Yii::app()->createAbsoluteUrl('//site/form?id='.$id.'&from=draft&type='.$_POST['Section1Length'].'$amount='.$_POST['Section1Face'].'&');
				Yii::app()->user->setFlash('success', "Thank You for submitting your Life Insurance application short-form.<br/>
We send e link on your email address. Please click that link and finish your application process. If in the meantime you have any questions or concerns, please feel free to call on us anytime at +1.616.723.8494<br/>
or email us at  info@hamiltonhudson.com<br>");
				//$this->redirect(array('request'));
				$this->redirect(array('successLater'));
			}
		}
		
		
      /*   $citizenship = $_GET['citizenship'];
        $residence = $_GET['residence'];
        $email = $_GET['email'];
        $phone = $_GET['phone'];
        $model = new CustomerRequest;
        $model->insurance_id = $insuranceID;
        $model->name = $name;
        Yii::app()->session['name'] = $name;
        $model->email = $email;
        Yii::app()->session['email'] = $email;
        $model->phone = $phone;
        $model->dob = $dob;
        $model->age = $age;
        $model->gender = $gender;
        $model->smoker = $smoker;
        $model->citizen = $citizenship;
        $model->residence = $residence;
        if ($model->save()) { */
           // Yii::app()->user->setFlash('success', "Your Request has been sent successfully");
            /* $this->redirect(array('popup', 'insuranceID' => $insuranceID));
        } */

       // $this->render('request');
		// $this->render('success');
    }

    public function actionMailsendSmtp($to='anupist726@gmail.com',$from='anup@coder71.com',$subject='Test',$message='test'){
        $mail=Yii::app()->Smtpmail;
        $mail->SetFrom($from, 'From NAme');
        $mail->Subject = $subject;
        $mail->MsgHTML($message);
        $mail->AddAddress($to, "");
        if(!$mail->Send()) {
            echo "Mailer Error: " . $mail->ErrorInfo;
        }else {
            echo "Message sent!";
        }
    }

    public function actionPopup($id='') {
	     //$model = new CustomerRequest;
      //  $insuranceID = $_GET['insuranceID'];
        //$telephone = $_POST['telephone'];

        //print_r($_POST);
		$insuranceID = $_GET['id'];
        $name = $_GET['name'];
        $dob = $_GET['dob'];
        $dob = date("Y/d/m", strtotime($dob));
		$birthDay = $_GET['birthDay'];
        $age = $_GET['age'];
        $gender = $_GET['sex'];
        $smoker = $_GET['smoker'];
        $type = $_GET['type'];
		$citizenship = $_GET['citizenship'];
        $residence = $_GET['residence'];
        $email = $_GET['email'];
        $phone = $_GET['phone'];
       // Yii::app()->session['name'] = $name;
       // Yii::app()->session['email'] = $email;

        
        $this->render('popup', array('name'=>$name, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob));
    }
	
	 public function actionForm(){
	 	if(isset($_GET['from']) && $_GET['from']!=''){

	 	$dataid=base64_decode($_REQUEST['id']);
	 	$dataid=CJSON::decode($dataid);
	 	$laterInfo=CustomerRequest::model()->findByPk($dataid['id']);
	 	$annualRate = Products::model()->findByPk($laterInfo->insurance_id)->annual_rate;
	 	$type=$_GET['type'];
	 	$amount=$_GET['amount'];
	 	$health='Proffered Plus';
	 	$name=$laterInfo->name;
	 	$gender=$laterInfo->gender;
	 	$birthDay=date('d',strtotime($laterInfo->dob));
	 	$birthMonth=date('m',strtotime($laterInfo->dob));
	 	$birthYear=date('Y',strtotime($laterInfo->dob));
	 	$smoker=$laterInfo->smoker;
	 	$citizenship=$laterInfo->citizen;
	 	$residence=$laterInfo->residence;
	 	$email=$laterInfo->email;
	 	$phone=$laterInfo->phone;
	 	$age=$laterInfo->age;
	 	$dob=date('Y-m-d',strtotime($laterInfo->dob));
	 	//print_r(array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob));exit;
	 	//Yii::app()->createUrl('//site/form',array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob));
	 	//echo "<script>

	 	//</script>"
	 	$url = Yii::app()->createUrl('//site/form',array('re'=>'recal','type'=>$type, 'amount'=>$amount,'annualRate'=>$annualRate, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob,'id'=>$laterInfo->insurance_id));
	 	$this->redirect($url);
	 }

	 	$model= new CustomerRequest;
		if(isset($_REQUEST['Request'])){
		$productsId = $_REQUEST['Request'];
		//echo $productsId; exit();
		$pc=ProductsCategory::model()->find(array(
		'condition'=>'product_id=:product_id',
		'params'=>array(':product_id'=>$productsId),
		)); 
		$companyName = Category::model()->findByPk($pc->category_id)->name;
		}
		$companyImage =  Category::model()->findByPk($pc->category_id)->image;
		$companyDescription=  Category::model()->findByPk($pc->category_id)->description;
		$annualRate = Products::model()->findByPk($productsId)->annual_rate;
		//$annualRate = $_POST['annualRate'];
		//echo $annualRate; exit;
        $name = $_REQUEST['name'];
        $dob = $_REQUEST['dob'];
        $dob = date("Y/d/m", strtotime($dob));
		$birthDay = $_REQUEST['birthDay'];
        $age = $_REQUEST['age'];
        $gender = $_REQUEST['sex'];
	//	echo $gender; exit();
        $smoker = $_GET['smoker'];
        $type = $_REQUEST['type'];

		$citizenship = $_REQUEST['citizenship'];
        $residence = $_REQUEST['residence'];
        $email = $_REQUEST['email'];
        $phone = $_REQUEST['phone'];
		$amount = $_REQUEST['amount'];

       // echo $annualRate; exit();
        $this->render('form', array('annualRate'=>$annualRate, 'name'=>$name, 'amount'=>$amount, 'gender'=>$gender, 'type'=>$type, 'companyName'=>$companyName, 'companyImage'=>$companyImage, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob,'model'=>$model,'id'=>$productsId,'companyDescription'=>$companyDescription));
    }
	   public function actionSuccess() {

        $this->render('success');
    }

     public function actionSuccessLater() {

        $this->render('successLater');
    }

    public function actionPopupbox() {

        $this->render('popupbox');
    }

    public function actionLatestnews() {
        $this->layout = '//layouts/contentLayout';
        $model = new LatestNews;
        $this->render('latestnews', array('model' => $model));
    }

    public function actionAdmissioninformation() {
        $this->layout = '//layouts/contentLayout';
        $model = new AdmissionInfo;
        $this->render('admissioninformation', array('model' => $model));
    }

    public function actionNoticeboardlist() {
        $this->layout = '//layouts/contentLayout';
        $model = new NoticeBoard;
        $this->render('noticeboardlist', array('model' => $model));
    }

    public function actionAdmissioninformationlist() {
        $this->layout = '//layouts/contentLayout';
        $model = new AdmissionInfo;
        $this->render('admissioninformationlist', array('model' => $model));
    }

    public function actionLatestnewslist() {
        $this->layout = '//layouts/contentLayout';
        $model = new LatestNews;
        $this->render('latestnewslist', array('model' => $model));
    }

    public function actionGallerylist() {
        $this->layout = '//layouts/contentLayout';
        $model = new Slideshow('searchgallery');
        $this->render('gallerylist', array('model' => $model));
    }

    public function actionGalleryview() {
        $this->layout = '//layouts/contentLayout';
        $model = new Slideshow('searchgallery');
        $this->render('galleryview', array('model' => $model));
    }

    public function actionexamresultlist() {
        $this->layout = '//layouts/contentLayout';
        $model = new ExamResult;
        $this->render('examresultlist', array('model' => $model));
    }

    public function actionComplain(){
        $this->layout = '//layouts/contentLayout';
        $model = new Complain;
        $this->render('complain', array('model' => $model));
    }

    public function actionProducts($id = '') {
        echo $id;
        exit();

        $data['prdCat'] = Category::model()->findAll("top='0' and status='1' order by sort_order");

        $this->render('test', array('data' => $data));
    }

    /**
     * This is the action to handle external exceptions.
     */
    public function actionError() {
        $this->layout = '//layouts/1column';
        if ($error = Yii::app()->errorHandler->error) {
            if (Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }

    /**
     * Displays the contact page
     */
    public function actionContact() {
        $this->layout = '//layouts/contentLayout';
        $model = new ContactForm;
        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
            if ($model->validate()) {
                $name = '=?UTF-8?B?' . base64_encode($model->name) . '?=';
                $subject = '=?UTF-8?B?' . base64_encode($model->subject) . '?=';
                $headers = "From: $name <{$model->email}>\r\n" .
                        "Reply-To: {$model->email}\r\n" .
                        "MIME-Version: 1.0\r\n" .
                        "Content-Type: text/plain; charset=UTF-8";

                mail(Yii::app()->params['adminEmail'], $subject, $model->body, $headers);
                Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        $this->render('contact', array('model' => $model));
    }

    /**
     * Displays the login page
     */
    public function actionLogin() {

        Yii::app()->theme = 'admin';
        $this->layout = '//layouts/login';
        if (Yii::app()->user->returnUrl == Yii::app()->request->baseUrl . '/index.php/admin/' || Yii::app()->user->returnUrl == Yii::app()->request->baseUrl . '/index.php/admin') {
            Yii::app()->theme = 'admin';
            $this->layout = '//layouts/login';
        }

        $model = new LoginForm;

        // if it is ajax validation request
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
            $errors = CActiveForm::validate($model);
            if ($errors != '[]') {
                echo $errors;
                Yii::app()->end();
            }
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login()) {
                if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
                    echo CJSON::encode(array(
                        'authenticated' => true,
                        'redirectUrl' => ($_POST['ref_url'] != '') ? $_POST['ref_url'] : Yii::app()->user->returnUrl,
                        "param" => "Any additional param"
                    ));
                    Yii::app()->end();
                }
                if ($_POST['ref_url'] != '')
                    $this->redirect($_POST['ref_url']);
                else
                    $this->redirect(Yii::app()->user->returnUrl);
            }
        }

        if ($_GET['email'] && $_GET['email'] != '')
            $model->username = trim($_GET['email']);

        // display the login form
        $this->render('login', array('model' => $model));
    }

    public function actionRegistration() {

        $model = new User;
        // collect user input data
        if (isset($_POST['User'])) {
            $model->attributes = $_POST['User'];
            $model->password = Yii::app()->easycode->genPass($_POST['User']['password']);
            $model->repeatpassword = Yii::app()->easycode->genPass($_POST['User']['repeatpassword']);
            $model->verification_code = md5(Yii::app()->params->md5Key . $_POST['User']['email']);
            $model->role = 2;
            // validate user input and redirect to the previous page if valid
            if ($model->validate()) {
                if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-form') {
                    echo CJSON::encode(array(
                        'authenticated' => true,
                        'redirectUrl' => Yii::app()->user->returnUrl,
                        "param" => "Any additional param"
                    ));
                    $model->save();
                    $this->sendRegistrationSuccessMail($model->id);
                    Yii::app()->end();
                }
                $this->redirect(Yii::app()->user->returnUrl);
            } else {
                if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-form') {
                    echo CJSON::encode(array(
                        'authenticated' => false,
                        'redirectUrl' => Yii::app()->user->returnUrl,
                        "param" => $model->getErrors(),
                    ));
                }
                //print_r($model->getErrors());
            }
        }
        // display the login form
        //$this->render('index', array('user' => $model));
    }

    public function sendRegistrationSuccessMail($id) {
        $model = User::model()->findByPk($id);
        $mail = new YiiMailer('new_user_registration', array('code' => $model->verification_code));
        $mail->setLayout('mail');
        $mail->setFrom(Yii::app()->params->adminEmail, 'Wavesales');
        $mail->setSubject('New user registration - Wavesales');
        $mail->setTo($model->email);
        $mail->send();
    }

    public function actionEmailverification() {
        if (isset($_GET['verification_code']) && $_GET['verification_code'] != '') {
            if (User::model()->exists('verification_code=:code', array(':code' => $_GET['verification_code']))) {
                if (User::model()->updateAll(array('email_verified' => 1), 'verification_code=:code', array(':code' => $_GET['verification_code'])))
                    Yii::app()->user->setFlash('success', "You have successfully verified your acount");
                else
                    Yii::app()->user->setFlash('error', "Opps!!! Verification failed.");
                $this->redirect(array('site/index'));
            }
        }
    }

    public function actionSearch() {
        $result = '';
        if ($_REQUEST['q']) {
            $q = htmlspecialchars($_REQUEST['q']);

            $cookie = new CHttpCookie('searchText', $q);
            $cookie->expire = time() + 60 * 60 * 24 * 180;
            Yii::app()->request->cookies['searchText'] = $cookie;

            $product = Products::model()->findAll('(name LIKE :q or description LIKE :q or metatag_title LIKE :q or metatag_keywords LIKE :q) and (status="1") order by name limit 10', array(':q' => '%' . $q . '%'));
            if (count($product) > 0) {
                $result .= '<h2>Products</h2>';
                $result .='<ul class="search_ul">';
                foreach ($product as $pr):
                    $name = $pr->name;
                    $url = Products::model()->makeLink($pr->id);
                    $result .= '<li><a href="' . $url . '">' . $name . '</a></li>';
                endforeach;
                $result .='</ul>';
            }


            $category = Category::model()->findAll('(name LIKE :q or description LIKE :q or metatag_title LIKE :q or metatag_keywords LIKE :q) and (status="1") order by name limit 10', array(':q' => '%' . $q . '%'));
            if (count($category) > 0) {
                $result .= '<h2>Category</h2>';
                $result .='<ul class="search_ul">';
                foreach ($category as $cr):
                    $name = $cr->name;
                    $url = Category::model()->makeLink($cr->id);
                    $result .= '<li><a href="' . $url . '">' . $name . '</a></li>';
                endforeach;
                $result .='</ul>';
            }

            echo $result;
        }
    }

    public function actionDetailsSearch() {
        $this->layout = '//layouts/productList';
        $data['q'] = mysql_escape_string(htmlspecialchars(trim($_REQUEST['q'])));

        if ($_GET['sortproduct']) {
            $sortval = mysql_escape_string($_GET['sortproduct']);
        } else {
            $sortval = '';
        }

        if ($_GET['offset'])
            $offset = $_GET['offset'];
        else
            $offset = '0';

        if ($data['q'] != '') {
            $data['products'] = Products::model()->getSearchProductList($sortval, $data['q'], $offset); //Get Products List
            //echo $data['products'];exit();
            //collect product category
            $data['category'] = array();
            for ($i = 0; $i < count($data['products']); $i++):
                if (!in_array($data['products'][$i]['category_id'], $data['category']))
                    $data['category'][] = $data['products'][$i]['category_id'];
            endfor;
        }


        if (Yii::app()->request->isAjaxRequest) {
            $this->renderPartial('//category/productsListing', array(
                'data' => $data,
            ));
        } else {
            $this->render('//category/viewSearch', array(
                'data' => $data,
            ));
        }
    }

    public function actionNewArrival() {
        $this->renderPartial('newArrival');
    }

    public function actionBestSeller() {
        $this->renderPartial('bestSeller');
    }

    public function actionMensBestSeller() {
        $this->renderPartial('mensBestSeller');
    }

    public function actionWomensBestSeller() {
        $this->renderPartial('womensBestSeller');
    }

    /*
      public function actionLogin() {
      Yii::app()->theme = 'admin';
      $this->layout = '//layouts/login';
      $model = new LoginForm;

      // if it is ajax validation request
      if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
      }

      // collect user input data
      if (isset($_POST['LoginForm'])) {
      $model->attributes = $_POST['LoginForm'];
      // validate user input and redirect to the previous page if valid
      if ($model->validate() && $model->login()) {

      if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
      echo CJSON::encode(array(
      'authenticated' => true,
      'redirectUrl' => Yii::app()->user->returnUrl,
      "param" => "Any additional param"
      ));
      Yii::app()->end();
      }

      $this->redirect(Yii::app()->user->returnUrl);
      }
      }
      // display the login form
      $this->render('login', array('model' => $model));
      } */

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}
