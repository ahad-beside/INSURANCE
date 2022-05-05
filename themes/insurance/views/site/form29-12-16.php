<style>
.grid-1{
    background-image: url("<?php // echo Yii::app()->theme->baseUrl ?>/assets/images/bg2.jpg");
    background-color: #1e73be !important;
}
.sm-hd {
  font-size: 20px;
}
.logo h1 {
  margin: 7px 0;
}
</style>
<link rel="stylesheet" href="<?= Yii::app()->theme->baseUrl ?>/assets/css/bootstrap.css">

<?php //echo $sex; ?>
<div class="container-fluid" style="background-color:#000;padding-left:0px">
		<div class="column one">
		
			<div class="top_bar_left clearfix panel-heading" style="width: 1319px;">
			
				<!-- .logo -->
				<div class="logo">
					<h1><a id="logo" href="http://lifeinsuranceabroad.com" title="Life Insurance Abroad" style="display:block;line-height: 0 !important;"><img class="logo-main   scale-with-grid" src="http://compucore.tech/insurance/themes/insurance/assets/images/logo-1.png" alt="Life Insurance Abroad" style="height:100%;"></a></h1>			
				</div>
			
				<div class="menu_wrapper" style="color:gray">
					Call us Now: +420.777 322 522&nbsp; &nbsp;  U.S. +1.616.723.0580				
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
  <h2 style="color:#fff; font-weight:bold;margin:10px 0px;">Your Life Insurance Application Form &nbsp; <span class="sm-hd" style="font-weight:normal !important">to be followed by telephone verification </span> </h2>
  </div>
  </div>
</div>

<div class="row" style="margin:auto;background-color:#fff;">




   <div class="welcome">
	<div class="col-md-12">	
	

<form action="<?php echo Yii::app()->createUrl('//site/request', array('re'=>'recal','type'=>$type, 'amount'=>$amount, 'name'=>$name, 'sex'=>$gender, 'birthDay'=>$birthDay, 'birthMonth'=>$birthMonth, 'birthYear'=>$birthYear, 'sex'=>$gender, 'smoker'=>$smoker, 'health'=>$health, 'citizenship'=>$citizenship, 'residence'=>$residence, 'email'=>$email, 'phone'=>$phone, 'age'=>$age, 'dob'=>$dob, 'companyName'=>$companyName, 'companyImage'=>$companyImage)); ?>" enctype="multipart/form-data" method="POST"> 

	<!-- ############################### start step1 ##############################-->
		<div id="div1" >   
				<!-- start company choose -->
				<?php  include('form/company.php'); ?>
				<!-- End company choose -->
				<div class="clearfix">&nbsp;</div>
				<!-- start section -1 -->
					<?php include('form/section1.php'); ?>
				<!-- end section -1 -->		
		<div class="clearfix">&nbsp;</div>
				<!-- start section -2 -->
				<?php include('form/section2.php'); ?>
				<!-- end section -2 -->	
			<div class="clearfix">&nbsp;</div>
		<div style="text-align:center; padding-bottom: 20px;" class="panel-heading"><button name="submit" class="button" style="padding-top:2px; ">Submit</button></div>
		<div class="col-md-6" style="text-align:right"></div>

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
    font-size: 16px!important;
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



