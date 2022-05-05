<div class="container-fluid topHead">
		<div class="column one">
		
			<div class="top_bar_left clearfix" style="width: 1319px;">
			
				<!-- .logo -->
				<div class="logo">
					<h1><a id="logo" href="http://lifeinsuranceabroad.com" title="Life Insurance Abroad" style="display:block;line-height: 0 !important;"><img class="logo-main   scale-with-grid" src="http://lifeinsuranceabroad.com/wp-content/themes/instax/images/logo-1.png" alt="Life Insurance Abroad" style="height:100%;"></a></h1>			</div>
			
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

<style> 

#mess {
    padding: 10px;
text-align: center;
width: 100%;
background-color: #fff;
font-size: 18px;
line-height: 30px;
}
body.grid-1 {
  background-color: #fff;
}
[class*="row"] > [class*="span"] {
  min-height: auto;
}
h2.heading-2 {
  background-color: #E7BE9E;
}
</style>



<br/>
<div class="container-fluid">
<div class="success" style="max-width:693px;margin:0px auto;">

<div class="row row-4">
	<div class="col-md-12 text-center successMsg">

      <!-- <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"><circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/><path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/></svg> -->
       

	<h2 style="text-align: center; font-size: 24px; color: #184b9a;"> <img style="height: 60px;width: 60px;" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/checkmark.png"><span style="float: right; display: block; margin-top: 20px;">Your Application Form was Successfully Submitted</span></h2>

  <h2 style="text-align: center; font-size: 25px; margin-top: 13px; margin-bottom: 15px; color: #184b9a; text-transform: uppercase;"><span style="text-decoration: underline;">Application Received</span></h2>

  <div class=""  id='mess'>
   
   <?= Yii::app()->easycode->showNotification()?>

<div style="margin-top: 50px;">
        <a class="btn btn-success" href='http://lifeinsuranceabroad.com' style='color:white; background: #7ac142; border-radius: 5px;'>Back To Home</a>
</div>
  </div>
</div>
</div>
</div>
<div class="panel-heading" style="bottom: 0px; width: 100%;margin-top: 30px;"><?php include 'footer.php' ;?></div>
<style type="text/css">
.successMsg h2{
  margin-bottom: 12px;
  color: #7ac142;
}
.successMsg .btn{
  padding: 7px 25px;
}
.checkmark__circle {
  stroke-dasharray: 166;
  stroke-dashoffset: 166;
  stroke-width: 2;
  stroke-miterlimit: 10;
  stroke: #7ac142;
  fill: none;
  animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards;
}
.checkmark {
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: block;
  stroke-width: 2;
  stroke: #fff;
  stroke-miterlimit: 10;
  margin: 2% auto;
  box-shadow: inset 0px 0px 0px #7ac142;
  animation: fill .4s ease-in-out .4s forwards, scale .3s ease-in-out .9s both;
}

.checkmark__check {
  transform-origin: 50% 50%;
  stroke-dasharray: 48;
  stroke-dashoffset: 48;
  animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
}

@keyframes stroke {
  100% {
    stroke-dashoffset: 0;
  }
}
@keyframes scale {
  0%, 100% {
    transform: none;
  }
  50% {
    transform: scale3d(1.1, 1.1, 1);
  }
}
@keyframes fill {
  100% {
    box-shadow: inset 0px 0px 0px 30px #7ac142;
  }
}
</style>