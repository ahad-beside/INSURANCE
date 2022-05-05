

<style> 

#mess {
    border: 2px solid #a1a1a1;
    padding: 10px 40px;
    text-align: center;
    width: 474px;
}
</style>



<br/>
<div class="row row-4">
  <div class="coffee-span-12 column-4">
    <h2 class="heading-2"> <font size="3"><span class="heading-text-7">Success</span> </font> </h2>
  </div>
</div>

<div class="row row-4">
  <div class=""  id='mess'>
   <?= Yii::app()->easycode->showNotification()?>
  </div>
</div>

<div class="row row-4">
  <div class="coffee-span-12 column-4">
    <h2 class="heading-2"> <font size="3"><span class="heading-text-7" ><a href='<?php echo Yii::app()->homeUrl; ?>' style='color:white'>Back</a></span> </font> </h2>
  </div>
</div>
