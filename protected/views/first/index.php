<div style="background: white">
    <?php if ($data['info']->first_banner != '') { ?>
        <img src="<?= Yii::app()->easycode->showOriginalImage($data['info']->first_banner); ?>" width="100%">
    <?php } ?>
        
        <?php echo Yii::app()->easycode->showNotification(); ?>
        
    <div style="text-align: center; padding: 20px 0px; margin: 20px 0; background: white">
        <strong style="font-size: 20px;"><?= $data['info']->first_lable ?></strong><br><br>
        <a href="<?= $this->createUrl('subscribe') ?>" class="btn btn-orange orange-button">Subscribe Now</a>
    </div>

        

    <div class="benifitsBox">
        <div class="line tpadding30 bpadding30">
            <div class="unit size1of2">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/free_shipping.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Free Shipping On Your Orders*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        No minimum purchase price
                    </div>
                </div>
            </div>

            <div class="lastUnit" style="width:50%">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/same_day.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Discounted Same Day Delivery*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        Get your order delivered the same day for just <?= Yii::app()->params->currencySymbol?> 70.
                    </div>
                </div>
            </div>
        </div>

        <div class="line tpadding30 bpadding30">
            <div class="unit size1of2">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/in_a_day.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Free In-a-day Delivery*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        Get your orders delivered within a day
                    </div>
                </div>
            </div>

            <div class="lastUnit">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/customer_care.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Priority Customer Service
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        24*7 customer service with minimum waiting
                    </div>
                </div>
            </div>
        </div>

        <div class="line tpadding30 bpadding30">
            <div class="unit size1of2">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/early_access.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Early Access*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        Get priority access to exclusive launches &amp;
                        shopping events
                    </div>
                </div>
            </div>

            <div class="lastUnit">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/exclusive_offers.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        Exclusive Offers*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        Fantastic deals only for subscribers
                    </div>
                </div>
            </div>
        </div>

        <div class="line tpadding30 bpadding30">
            <div class="unit size1of2">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/first_day.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        WaveSales First Day*
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        One Day, Every Month. Top Offers, Only for Subscribers
                    </div>
                </div>
            </div>

            <div class="lastUnit">
                <div class="imageBox unit">
                    <img src="<?= Yii::app()->theme->baseUrl?>/assets/images/first/more_benifits.jpg">
                </div>

                <div class="textBox lastUnit">
                    <div class="">
                        More Benefits to Come...
                    </div>

                    <div class="fk-fontlight fk-font-14">
                        Subscribers get access to additional benefits.
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<style>
    .orange-button{
        color: #fff;
        padding: 10px 0;
        font-size: 18px;
        text-transform: uppercase;
        display: inline-block;
        width: 240px;
    }
    .benifitsBox{
        padding: 10px 0px;
        background: white;
    }
    .benifitsBox .imageBox {
        height: 70px;
        line-height: 70px;
        text-align: center;
        width: 30%;
    }
    .benifitsBox .textBox {
        display: table-cell;
        font-size: 16px;
        height: 61px;
        vertical-align: middle;
        width: 70%;
    }


</style>