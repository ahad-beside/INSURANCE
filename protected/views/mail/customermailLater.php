<table width="700" border="0" align="center">
  <tr>
    <td  style="width:700px; border:1px solid #ccc; background-color:#F7F7F7; padding:10px;"><div class="container" style="font-family:Verdana, Geneva, sans-serif; font-size:12px; width: 100%;">
        <div class="col-md-12" style="background-color:#184b9a; text-align:center; padding-bottom:8px; border-bottom:2px solid #CCC; margin-top:15px; margin-bottom:12px;">
          <div style="margin-bottom:12px;" ><img src="http://compucore.tech/insurance/themes/insurance/assets/images/logo-1.png" alt="Life Insurance Abroad" style="with:100%;" /></div>
        </div>
        <div class="col-md-12"> <strong>Dear
          <?php echo $section2Firstname." ".$section2Lastname ?>
          ,</strong>
          <p>Thank You for submitting your Life Insurance application short-form.</p>
          <p>Thank You for submitting your Life Insurance application short-form.
            Please click the bellow link to complete your application process.  If in the meantime you have any questions or concerns,  please feel free to call on us anytime from the U.S. at +1.616.723.8494</p>
            <p>
              <?php $id=base64_encode(CJSON::encode(array('id'=>$id)));?>
              <a href="<?= Yii::app()->createAbsoluteUrl('//site/form?id='.$id.'&from=draft&type='.$type.'&amount='.$amount.'&insuranceID='.$insuranceID.'&section1AnnualRate='.$section1AnnualRate.'&');?>">Click Here</a></p>
        </div>
        <div class="clearfix">&nbsp;&nbsp;</div>
        <div class="col-md-12" align="center"> Thank You<br/>
          Hamilton|Hudson <br/> info@hamiltonhudson.com </div>
      </div></td>
  </tr>
</table>
