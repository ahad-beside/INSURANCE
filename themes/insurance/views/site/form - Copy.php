<link rel="icon" href="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/favicon.jpg" sizes="32x32">
<style>
.grid-1{
    background-color: #f2f2f2 !important;
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
<div class="row" style="margin: 0px auto 30px;">
  <div class="coffee-span-12 column-12 untbn" style="background-color: transparent;">
  <div class="container">
  <h2 style="color:#fff; font-weight:bold;margin:10px 0px;">Your Life Insurance Application Form &nbsp; <span class="sm-hd" style="font-weight:normal !important;">to be followed by telephone verification </span> 
  	 <button  type="button" onclick="window.print()" style="padding: 1px 17px!important; margin-left: 65px; color:#ffff!important;" class="panel-heading"><i class="fa fa-print"></i> <h5>Print</h5></button>

  </h2>
  </div>
  </div>
</div>

<div class="row" style="margin:auto;background-color:#fff;">




   <div class="welcome">
	<div class="col-md-12">	
	

<form action="<?php echo Yii::app()->createUrl('//site/request', array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage,'id'=>$id)); ?>" enctype="multipart/form-data" method="POST"> 

	<!-- ############################### start step1 ##############################-->
		<div id="div1" >   
				<!-- start company choose -->
        <input type="hidden" name="id" value="<?=$id?>">
				<?php  include('form/company.php'); ?>
				<!-- End company choose -->
				<div class="clearfix">&nbsp;</div>

			<div class="col-md-5 panel-heading" style="text-align:left"><a name="submit" href="<?php echo Yii::app()->createUrl('//site/result2',  array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'gender'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship,'dob'=>$dob, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage, 'age'=>$age,'id'=>$id)); ?>" style="padding-top:2px;" class="button2">&lt; Back</a></div>

<div class="clearfix">&nbsp;</div>
				<div class="clearfix">&nbsp;</div>
				<!-- start section -1 -->
					<?php include('form/section1.php'); ?>
				<!-- end section -1 -->		
		<div class="clearfix">&nbsp;</div>
				<!-- start section -2 -->
				<?php include('form/section2.php'); ?>
				<!-- end section -2 -->	
			<div class="clearfix">&nbsp;</div>

			<div class="col-md-5 panel-heading" style="text-align:left"><a name="submit" href="<?php echo Yii::app()->createUrl('//site/result2',  array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'gender'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship,'dob'=>$dob, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage, 'age'=>$age,'id'=>$id)); ?>" style="padding-top:2px;" class="button2">&lt; Back</a></div>

		<div class="col-md-7 panel-heading"  style="text-align:left; padding-bottom: 20px;" ><button name="submit" class="button" style="padding-top:2px; ">Submit</button> <!-- <button name="submitLater" class="button" style="padding-top:2px; ">Submit Later</button> --></div>
		<!--<div class="col-md-6" style="text-align:right"></div>  -->

	</div>
	<!-- ################################################### End step1 ######################################################-->
	
</form>
	</div>
</div>
</div>
<div class="panel-heading"><?php include 'footer.php' ;?></div>
<style>
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

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #fee7d5}

th {
    background-color: #4CAF50;
    color: white;
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
</style>

<script>
	$(document).ready(function() {
	 
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
   });
   
   
  		
});

</script>

<style>
 @media print {
        body{
            margin: 0px!important; padding: 0px!important;
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

</style>



