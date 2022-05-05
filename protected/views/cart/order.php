<script>
    $(document).ready(function () {
        $('.accordion .item .heading').click(function () {

            var a = $(this).closest('.item');
            var b = $(a).hasClass('open');
            var c = $(a).closest('.accordion').find('.open');

            if (b != true) {
                $(c).find('.content').slideUp(200);
                $(c).removeClass('open');
            }

            $(a).toggleClass('open');
            $(a).find('.content').slideToggle(200);

        });
    });
</script>
<!------------------------------------------------start------------------------------------------------->
<?php
if (!isset($_GET['order'])) {
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'order-form',
        'enableAjaxValidation' => false,
        'htmlOptions' => array('class' => 'inner-form'),
    ));
    ?>
    <?php echo $form->errorSummary($model) ?>
    <div class="accordion">
        <div class="item open">
            <div class="heading">Order Summary</div>
            <div class="content" style="display: block">
                <?php
                $session = Yii::app()->session;
                $cartItems = count($session['cart']);
                $total = 0;
                if ($cartItems == 0) {
                    ?>
                    <div style="width: 100%; border: solid 1px white; font-size: 16px; font-weight: bold;">You have no items in cart.</div>
                    <?php
                } else {
                    ?>
                    <table cellspacing="0" cellpadding="0" width="100%" class="cart-table">
                        <thead class="fk-uppercase cart-head">
                            <tr>
                                <td colspan="2" class="product-info head-cell">
                                    <table cellspacing="0" cellpadding="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td class="image-cell">&nbsp;</td>
                                                <td class="item-cell"><span class="lpadding10">Item</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td class="qty-cell head-cell lborder" style="width: 10%!important;">Qty</td>
                                <td class="price-cell head-cell lborder">Price</td>
                                <td class="head-cell delivery-cell lborder">Delivery Details</td>
                                <td class="head-cell subtotal-cell lborder" style="border-right:none;">Subtotal</td>
                                <td class="head-cell lborder"></td>
                            </tr>
                        </thead>
                        <tbody class="cart-body">
                            <?php
                            $i = 1;
                            //print_r($session['cart']);
                            foreach ($session['cart'] as $k => $v):
                                ?>
                                <tr class="item-row">
                                    <td class="product-info fk-position-relative delivery-cell" colspan="2">
                                        <table cellspacing="0" cellpadding="0" width="100%" height="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="cell image-cell"><div class="carty-image fk-text-center fk-position-relative"><?php echo Yii::app()->easycode->showImage($v['image'], 80, 80) ?></div></td>
                                                    <td class="cell item-cell">
                                                        <span class="title fk-font-14"><?php echo $v['name'] ?></span>
                                                        <?php
                                                        if (count($v['option']) > 0):
                                                            foreach ($v['option'] as $k2 => $option):
                                                                echo '<p class="fk-font-11 font-color-medium">' . $k2 . ' : ' . $option['name'] . ' (' . $option['price_prefix'] . number_format($option['price'], 2) . ')' . '</p>';
                                                            endforeach;
                                                        endif;
                                                        ?>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td class="cell delivery-cell" style="width: 10%!important;">
                                            <input type="text" size="2" data-id="<?= $k?>" value="<?= $v['qty'] ?>" style="border: 1px solid #ccc; text-align: center;">
                                            <img src="<?= Yii::app()->baseUrl?>/images/reload.png" width="14" style="cursor: pointer" onclick="updatecart($(this))">
                                    </td>
                                    <td class="cell price-cell"><div class="carty-price line"> 
                                            <!-- Printing all delivery details here -->
                                            <div class=" fk-font-14 price"><?php echo Yii::app()->params->currencySymbol.number_format($v['productPrice'], 2) ?></div>
                                        </div></td>
                                    <td class="cell delivery-cell"><div class="fk-fontlight"> <strong class="fk-font-14 offer-color">Free</strong> </div>
                                        <p class="fk-font-11 fk-fontlight tmargin5">Delivery within 6-7 business days.</p>
                                    </td>
                                    <td class="cell subtotal-cell fk-font-14 fk-bold price delivery-cell"> <?php echo Yii::app()->params->currencySymbol.number_format($v['price'], 2) ?> </td>
                                    <td class="cell delivery-cell"><img src="<?= Yii::app()->baseUrl?>/images/remove.png" width="14" style="cursor: pointer" class="rmitem-order" data-id="<?= $k?>"></td>
                                </tr>
                                <?php
                                $total += $v['price'];
                            endforeach;
                            ?>
                        </tbody>
                        <tfoot class="fk-uppercase cart-head">
                            <tr>
                                <td class="head-cell delivery-cell lborder" colspan="5"><strong>Total:</strong> </td>
                                <td class="head-cell subtotal-cell lborder" style="border-right:none; font-weight: bold;"><?php echo Yii::app()->params->currencySymbol.number_format($total, 2) ?></td>
                                <td class="head-cell delivery-cell lborder"></td>
                            </tr>
                        </tfoot>
                    </table>
                <?php } echo $form->hiddenField($model, 'total', array('value' => $total));
                echo $form->error($model, 'total'); ?>
            </div>
        </div>
        <div class="item">
            <div class="heading">Delivery Information</div>
            <div class="content">
                <?php echo $form->labelEx($model, 'delivery_info'); ?>
                <?php echo $form->textArea($model, 'delivery_info', array('class' => 'form-control', 'style' => 'width:100%')); ?>
    <?php echo $form->error($model, 'delivery_info'); ?>
            </div>
        </div>

        <div class="item">
            <div class="heading">Payment Method</div>
            <div class="content">
                <div class="form-group radio-inline">
                    <?php echo $form->labelEx($model, 'payment_method'); ?>
                    <?php //echo $form->radioButtonList($model, 'payment_method', array('1' => Yii::app()->params->bankName, '2' => 'Cash On Delivery'), array('class' => 'form-control')); 
                    echo $form->hiddenField($model, 'payment_method', array('class' => 'form-control')); ?>
                    <table style="float: left;">
                        <tr class="pmtr <?php if($model->payment_method==1)echo 'activepmr';?>" data-id="1">
                            <td>
                                <div class="payment_method">
                                    <img src="<?= Yii::app()->request->baseUrl?>/images/bank_delivery.png" width="60">
                                </div>
                            </td>
                            <td style="vertical-align: middle; padding: 0 10px;">
                                <h3>Bank Transfer</h3>
                                <p>After order placed. You should transfer order amount via bank, You will know our bank details after order.</p>
                            </td>
                        </tr>
                        <tr class="pmtr <?php if($model->payment_method==2)echo 'activepmr';?>" data-id="2">
                            <td>
                                <div class="payment_method">
                                    <img src="<?= Yii::app()->request->baseUrl?>/images/cash_on_delivery.png" width="60">
                                </div>
                            </td>
                            <td style="vertical-align: middle; padding: 0 10px;">
                                <h3>Cash On Delivery</h3>
                                <p>You will pay after get your product.</p>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <?php echo $form->error($model, 'payment_method'); ?>
                </div>

                <div class="clearfix">&nbsp;</div>
                <div style="text-align: center; width: 100%; margin-top: 10px;">
                    <a class="btn continue-shopping" style="background-color: #CCC; font-size: 14px; color: black;" href="<?php echo Yii::app()->request->baseUrl ?>">Continue Shopping?</a>
                    <button type="submit" class="btn" style="background-color: #fdd922; font-size: 14px; color: black;">Order Now</button>
                </div>
            </div>
        </div>
    </div>
    <!------------------------------------------------end------------------------------------------------->
    
    <script type="text/javascript">
        $('body').on('click', '.rmitem-order', function () {
        var $obj = $(this);
        if (confirm('Are you sure to delete?') == true) {
            $.get('<?= Yii::app()->createUrl('//cart/dell') ?>?id='+$obj.attr("data-id"), {}, function (data) {
                if (data == 1) {
                    location.reload(); 
                }
            });
        } else {
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
    $('.pmtr').click(function(e){
        e.preventDefault();
        $('.pmtr').removeClass('activepmr');
        $(this).addClass('activepmr');
        $('#Order_payment_method').val($(this).attr('data-id'));
    });
    </script>

    <?php
    $this->endWidget();
}else {
    ?>
    
    <div class="gd-col gu16 order_success">
        <div class="gd-col gu7" style="text-align: left; border-right: solid 1px #CCC">
            <h3>Thank you for your order!</h3>
            <p>
                Your order has been placed and is being processed. When the item(s) are shipped you will receive an email with the details. You can track this order through <a href="<?= Yii::app()->createUrl('//user/myOrders')?>">My orders</a> page. 
            </p>
            <p><strong>Order items are grouped seller wise and listed under separate order IDs. Details below.</strong></p>
            <p><span class="amount"><?= Yii::app()->params->currencySymbol.' '.number_format($data['orderInfo']->grand_total, 2)?></span> paid through <?php if($data['orderInfo']->payment_method==1){ echo 'Bank transfer';}else{ echo 'Cash On Delivery';}?></p>
            
            <?php if($data['orderInfo']->payment_method==1):?>
            <p>
                <strong>Bank Name: <?php echo Yii::app()->params->bankName ?></strong><br>
                <strong>A/C#: <?php echo Yii::app()->params->bankAccountNumber ?></strong>
            </p>
            <?php endif;?>
        </div>
        <div class="gd-col gu7 delivery_info">
            <h3>Delivery Information</h3>
            <?php echo $data['orderInfo']->delivery_info ?>
            <br><br>
            <div class="delivery_date">
                Your complete order will be delivered withing short time.
            </div>
            <br><br>
            <div class="manage_order" style="text-align: center; width: 100%">
                <a href="<?= Yii::app()->createUrl('//user/myOrders')?>" class="btn btn-blue" style="color:white; font-size: 15px;"><buton>My Orders</buton></a>
            </div>
        </div>
    </div>
    
    <div class="gd-col gu16" style="text-align: center;">
        <br>
        <img src="<?php echo Yii::app()->request->baseUrl?>/images/order_process.jpg">
    </div>

<?php } ?>

