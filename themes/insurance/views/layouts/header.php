<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl;?>/assets/js/jquery-1.11.3.min.js"></script>
<title>Life Insurance Quotes</title>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl;?>/assets/fancybox/jquery.fancybox.js?v=2.1.5"></script>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl;?>/assets/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />

<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl;?>/assets/css/coffeegrinder.min.css">
<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl;?>/assets/css/wireframe-theme.min.css">
<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl;?>/assets/css/main.css">
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl;?>/assets/css/form.css">
<link rel="stylesheet" href="<?= Yii::app()->theme->baseUrl ?>/assets/css/datepicker.css">


<script type="text/javascript" src="<?= Yii::app()->theme->baseUrl ?>/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?= Yii::app()->theme->baseUrl ?>/assets/js/bootstrap-datepicker.js"></script>
<script>
		$(function(){
			$('.dp1').datepicker({
				format: 'mm-dd-yyyy',
                todayBtn: 'linked'
			});

		});
		
	</script>

<style>
a:link {
	color: #0148CB
}
a:visited {
	color: #0148CB
}
a:hover {
	text-decoration: none;
	color: #0148CB
}
a:active {
	color: #0148CB
}
a:link.nocolor {
	text-decoration: none;
	border-bottom: 2px solid #D50000;
	color: #000000
}
a:visited.nocolor {
	text-decoration: none;
	border-bottom: 2px solid #D50000;
	color: #000000
}
a:hover.nocolor {
	text-decoration: none;
	border-bottom: 2px solid #D50000;
	color: #000000
}
a:active.nocolor {
	text-decoration: none;
	border-bottom: 2px solid #D50000;
	color: #000000
}
</style>


 <script type="text/javascript">
            $(document).ready(function () {
                /*
                 *  Simple image gallery. Uses default settings
                 */

                $('.md-fancy').fancybox({
                    'width': '550px',
                    'height': '500px',
                    'autoScale': true,
                    'transitionIn': 'none',
                    'transitionOut': 'none',
                    'type': 'iframe'
                });

            });
        </script>
        <style type="text/css">
            .fancybox-custom .fancybox-skin {
                box-shadow: 0 0 50px #222;
            }
        </style>
</head>
<body class="grid-1">
