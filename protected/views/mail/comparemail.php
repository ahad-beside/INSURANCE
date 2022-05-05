<style>
.grid-1 {
	background-image: url("<?php echo Yii::app()->theme->baseUrl ?>/assets/images/bg2.jpg");
}
.m_-8788615861792509510applymail button {
  background-color: #287cc1 !important;border: medium none !important;color: white !important;display: inline-block !important;font-size: 16px !important;padding: 15px 32px !important;text-align: center !important;text-decoration: none !important;
}
.phn a[href] {
  color: #fff!important;
}
</style>
<div class="mailDesign" style="width: 600px; margin: auto; border: 1px solid #ddd; padding: 0px; background: #fff;">
  <div style="width: 100%; display: table; background: #184b9a; color: #fff; font-size: 12px;">
    <table style="width: 100%; font-family: arial; margin-top: 0px; padding: 0px; margin-bottom: 0px">
      <tr>
        <td width="60%" style="padding: 3px;"><img style="width: 300px;" src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/logo-1.png"></td>
        <td width="40%" style="text-align: right; padding: 3px;"> Call us Now: +420.777 322 522    U.S. +1.616.723.8494 </td>
      </tr>
    </table>
  </div>


  <table style="width: 100%; background: #fff; font-family: arial; margin-top: 0px; font-size: 12px;">
    
    <tr>
      <td style="padding: 0px 8px; background: #f2f2f2">
        <div style="width: 100%; display: inline-block;">
            <div>
              <h2 style="font-size: 20px; color: #1e73be; border-bottom: 1px solid #1e73be; padding-bottom: 5px; margin: 5px 0px; text-align: center;">Your Instant Life Insurance Quote</h2>
            </div>
        </div>
         <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Name</b><br><?php  echo $name; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">E-mail</b><br><?php  echo $email; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Phone</b><br><?php  echo $phone; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Birthdate</b><br><?php  echo date("F d, Y", strtotime($dob)); ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Age Nearest Birthday:</b><br><?php  echo $age; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Gender</b><br><?php  echo $gender; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Smoker/ Tobacco</b><br><?php  echo $smoker; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Citizenship</b><br><?php  echo $citizenship; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Residence</b><br><?php  echo $residence; ?>
            </td>
          </tr>
        </table>
        </div>

        <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
          <tr>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Amount of Insurance</b><br><?php echo "$ ".number_format($amount)."."; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              <b style="color: #333">Type of Insurance</b><br><?php  echo $type; ?>
            </td>
            <td style="padding: 0px; width: 33%;">
              
            </td>
            
          </tr>
        </table>
        </div>


      </td>
    </tr>
     <tr>
      <td style="padding: 0px 8px; background: #fff">
        <div style="width: 100%; display: inline-block; margin-top: 10px;">
            <p>This quote assumes that you have a "Preferred/Excellent" medical history and health report. If our underwriter's findings differ from "Preferred/Excellent", your final annual insurance cost will be higher than quoted.</p>
                <p style="font-weight:bold; padding-left: 5px;">However, because we use a universal application form that allows us to create a comparison between our three partner insurance companies, we are able to guarantee you the lowest price possible from our partners.</p>
        </div>
      </td>
    </tr>
<?php
$countryId=Country::model()->find("name='$residence'")->id;
$sql=Products::model()->findAll(array(
'condition'=>'gender=:gender and type=:type and smoker=:smoker and amount=:amount and :age BETWEEN age_start and age_end',
'params'=>array(':gender'=>$gender, ':type'=>$type, ':smoker'=>$smoker, ':amount'=>$amount, ':age' => $age),
'order'=>'annual_rate asc',
));
if (count($sql)>0){
  ?>
    <tr>
      <td style="padding: 0px 8px;">
         <div style="width: 100%; border-bottom: 1px solid #ddd; padding: 7px 0px">
          <table style="width: 100%">
            <?php
            $i=0;
foreach($sql as $q):
  $i++;
  if($i%2!=0)
    $trBaG='#f2f2f2';
  else
    $trBaG='#fff';
if($q->country_category!=''){
  $countryArray=CJSON::decode(CountryCategory::model()->find("name='$q->country_category'")->country_id);
  //print_r($countryArray);
if(in_array($countryId, $countryArray)){
?>
<?php $pc=ProductsCategory::model()->find(array(
'condition'=>'product_id=:product_id',
'params'=>array(':product_id'=>$q->id),
)); 
?>
          <tr style="background: <?=$trBaG?>">
            <td style="padding: 0px; width: 25%; text-align: center; padding: 5px;">
              <img src="http://lifeinsuranceabroad.com/quote/insurance/upload/<?php echo Category::model()->findByPk($pc->category_id)->image; ?>" style='width:150px; padding-top:5px'>
            </td>
            <td style="padding: 0px; width: 25%; text-align: center; padding: 5px;">
              <b><?php echo '$ '.number_format($q->annual_rate); ?>.</b><span class="text-text-9">&nbsp; Annually</span>
            </td>
            <td style="padding: 0px; width: 25%; text-align: center; padding: 5px;">
              <p><?php echo $type;?></p>
            </td>
            <td style="padding: 0px; width: 25%; text-align: center; padding: 5px;">
              <a href="<?=Yii::app()->createAbsoluteUrl('//site/form',array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'gender'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship,'dob'=>$dob, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage, 'age'=>$age,'id'=>$id,'Request'=>$q->id))?>"> <button type="button" name="Request" class="button btnn" style="background-color: #287cc1 !important;border: medium none !important;color: white !important;display: inline-block !important;font-size: 16px !important;padding: 15px 25px !important;text-align: center !important;text-decoration: none !important;">Apply Now </button><br><span style="font-size: 13px; color: #fff; background: #acb60b; padding: 5px 33px; border-radius: 3px; display: none;">Pay Later</span></a>
            </td>
          </tr>
        <?php }}endforeach;?>
        </table>
        </div>
    </td>
  </tr>
<?php } ?>
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
     <div style="text-align: center; color: #fff; font-size: 12px;">© 2016 Hamilton Hudson Ltd. All Rights Reserved</div>
  </div>
</div>

