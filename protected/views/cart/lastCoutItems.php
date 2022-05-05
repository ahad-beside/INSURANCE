<!-- start order summary -->
<?php
$session = Yii::app()->session;
$cartItems = count($session['cart']);
if($cartItems==0){
    ?>
<div style="width: 100%; border: solid 1px white; font-size: 16px; font-weight: bold;">You have no items in cart.</div>
<?php
}else{
    ?>
<table border="1" style="width: 100%">
    <thead>
        <tr style="border-bottom:solid 1px">
            <th>Image</th>
            <th class="name">Product Name</th>
            <th class="price">Price</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $total=0;
        foreach($session['cart'] as $k=>$v):
            if($k<=5){
            ?>
        <tr style="border-bottom: solid 1px;">
            <td class="image" style="padding: 10px 0;"><?php echo Yii::app()->easycode->showImage($v['image'],50,50)?></td>
            <td style="vertical-align: top; line-height: 14px; padding: 10px 0;">
                <?php echo $v['name']?>
                <?php
                /*if(count($v['option'])>0):
                    echo '<br><br><strong>Options:</strong><br>';
                    foreach($v['option'] as $k2=>$option):
                        echo $k2.' : '.$option['name'].' ('.$option['price_prefix'].  number_format($option['price'],2).')'.'<br>';
                    endforeach;
                endif;*/
                ?>
            </td>
            <td class="price" style="vertical-align: top; line-height: 14px; text-align: right; padding: 10px 0;"><?php echo number_format($v['price'],2)?></td>
            
        </tr>
        <?php
            }
        $total += $v['price'];
        endforeach;
        ?>
        <!--<tr>
            <th class="price" colspan="2"><strong>Total:</strong></th>
            <th class="price" style="text-align: right;"><strong><?php //echo number_format($total,2)?></strong></th>
        </tr>-->
    </tbody>
</table>

<div style="text-align: center; width: 100%; margin-top: 10px;">
    <a style="background-color: #fdd922; font-size: 14px; color: black; padding: 10px;" class="cart-popup" href="<?= Yii::app()->createUrl('//cart/checkout')?>"><?php
    if($cartItems>5){ echo 'View More';}else{ echo 'Checkout';}?></a>
</div>
<script>
    $(".cart-popup").colorbox({iframe: true, width: "1200px", height: "500px"});
</script>
<?php }?>
<!-- end order summary -->
