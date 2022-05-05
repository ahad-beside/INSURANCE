<div class="page-title">Checkout</div>

<!-- start order summary -->
<?php
$session = Yii::app()->session;
//print_r($session['cart']);
$cartItems = count($session['cart']);
if($cartItems==0){
    ?>
<div style="width: 100%; border: solid 1px white; font-size: 16px; font-weight: bold;">You have no items in cart.</div>
<?php
}else{
    ?>
<table class="checkout-table gu12" border="1">
    <thead>
        <tr>
            <th>Sl.</th>
            <th>Image</th>
            <th class="name">Product Name</th>
            <th>Qty</th>
            <th class="price">Price</th>
            <th>Delivery Details</th>
            <th>Sub Total</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i=1;
        $total=0;
        foreach($session['cart'] as $k=>$v):
            ?>
        <tr>
            <td class="sl"><?php echo $i++;?></td>
            <td class="image"><?php echo Yii::app()->easycode->showImage($v['image'],80,80)?></td>
            <td>
                <?php echo $v['name']?>
                <?php
                if(count($v['option'])>0):
                    echo '<br><br><strong>Options:</strong><br>';
                    foreach($v['option'] as $k2=>$option):
                        echo $k2.' : '.$option['name'].' ('.$option['price_prefix'].  number_format($option['price'],2).')'.'<br>';
                    endforeach;
                endif;
                ?>
            </td>
            
            <td style="text-align: center">
                    <input type="text" size="2" data-id="<?= $k?>" value="<?= $v['qty'] ?>" style="border: 1px solid #ccc; text-align: center;">
                    <img src="<?= Yii::app()->baseUrl?>/images/reload.png" width="14" style="cursor: pointer" onclick="updatecart($(this))">
            </td>
            <td class="price"><?php echo Yii::app()->params->currencySymbol.number_format($v['productPrice'],2)?></td>
            <td style="text-align: center">
<!--                <div class="fk-fontlight"> <strong class="fk-font-14 offer-color">Free</strong> </div>-->
                <p class="fk-font-12"><?= Products::model()->findByPk($v['id'])->delivery_details?></p>
            </td>
            <td class="price"><?php echo Yii::app()->params->currencySymbol.number_format($v['price'],2)?></td>
            <td><a class=" btn-sm rmitem" href="<?php echo Yii::app()->createUrl('//cart/dell/'.$k.'?return=checkout');?>"><img src="<?= Yii::app()->baseUrl?>/images/remove.png" width="14" style="cursor: pointer"></td>
        </tr>
        <?php
        $total += $v['price'];
        endforeach;
        ?>
        <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th class="price">Total:</th>
            <th class="price"><?php echo Yii::app()->params->currencySymbol.number_format($total,2)?></th>
            <th>&nbsp;</th>
        </tr>
    </tbody>
</table>

<div style="text-align: center; width: 100%">
    <a class="btn continue-shopping" onclick="parent.jQuery.colorbox.close();" style="background-color: #0a3151; font-size: 14px; color: white;" href="#<?php //echo Yii::app()->request->baseUrl?>">Continue Shopping?</a>
    <a class="btn" style="background-color: #fdd922; font-size: 14px; color: black;" href="#" onclick="parent.location.href='<?php echo $this->createUrl('order')?>'">Checkout Now</a>
</div>

<script type="text/javascript">
$('.rmitem').click(function(){
    if(confirm('Are you sure to delete?')==true){
        return true;
    }else{
        return false;
    }
});
function updatecart($this){
        var qty = $this.parent().find('input').val();
        var cartid = $this.parent().find('input').attr('data-id');
        
        $.post('<?= Yii::app()->createUrl('//cart/updateCart/') ?>', {id: cartid,qty: qty}, function (data) {
            //$this.parent().next('td').html(data);
            location.reload();
        });
    }
</script>
<?php }?>
<!-- end order summary -->
