<div class="container" style="font-family:Verdana, Geneva, sans-serif; font-size:12px; width: 100%;">

    <div class="col-md-12" style="text-align:center; padding-bottom:8px; border-bottom:2px solid #CCC; margin-top:15px; margin-bottom:12px;">
        <div style="margin-bottom:12px;"><img src="<?php echo Yii::app()->params->SERVER_HOST . Yii::app()->params->companyLogo ?>" /></div>
        <?php //echo Yii::app()->params->AddressPhoneEmailWeb?>
    </div>

    <div class="col-md-12">
        <p>Dear <?= $model->userIdFk->first_name.' '.$model->userIdFk->last_name?>,<br>Your order <?= $model->order_number?> is <?= $model->status?>
            now.</p>

        <table width="100%">
            <tr>
                <td width="50%">
                    <div style="font-size:16px; margin-bottom:12px;">To</div>
                    <b style="font-size:14px;"><?= $model->userIdFk->first_name . ' ' . $model->userIdFk->last_name; ?></b><br/>
                    <?php if ($model->userIdFk->phone != ''): ?>
                        <strong>Mobile</strong> :  <?= $model->userIdFk->phone ?><br/>
                    <?php endif; ?>
                    <strong>Email</strong> :  <?= $model->userIdFk->email ?>
                    <br><br>
                    <strong>Delivery Information:</strong><br>
                    <?= $model->delivery_info ?>
                </td>
                <td width="50%" align="right" style="vertical-align: top">
                    <table style="font-size: 12px;">
                        <tr>
                            <td align="right"><strong>Order #</strong> :</td>
                            <td align="right"><?php echo $model->order_number ?></td>
                        </tr>
                        <tr>
                            <td align="right"><strong>Order Date</strong> :</td>
                            <td align="right"><?= date("d-m-Y", strtotime($model->order_date)); ?></td>
                        </tr>
                        <tr>
                            <td align="right"><strong>Order Status</strong> :</td>
                            <td align="right"><?= $model->status; ?></td>
                        </tr>
                        <tr>
                            <td align="right"><strong>Payment Method</strong> :</td>
                            <td align="right"><?= PaymentMethods::model()->findByPk($model->payment_method)->name; ?></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div class="col-md-12">
        <?php $products = OrderProducts::model()->findAll('order_id_fk=:order_id', array(':order_id' => $model->id));?>

        <table class="table table-striped" style="border-top:1px solid #CCC; font-family:Geneva, sans-serif; font-size:12px; margin-top:12px; width: 100%; border-collapse: collapse;" border="1" cellpadding="4">
            <thead>
            <tr>
                <th align="left" valign="middle">#</th>
                <th align="left" valign="middle">Product</th>
                <th align="right" valign="middle" style="text-align:right!important">Qty</th>
                <th align="right" valign="middle" style="text-align:right!important">Price (<?php echo Yii::app()->params->currencySymbol ?>)</th>
            </tr>
            </thead>
            <tbody>
            <?php
            if (count($products) > 0) {
                $i = 0;
                $subtotals = 0;
                $qtytotal = 0;
                foreach ($products as $v):
                    $i++;
                    ?>
                    <tr>
                        <td align="left" valign="middle"><?= $i ?></td>
                        <td align="left" valign="middle">
                            <?= Products::model()->findByPk($v->products_id_fk)->name;?><br>
                            <?php
                            $option = json_decode($v->options);
                            foreach($option as $key=>$opt):
                                echo '<strong>'.$key.':</strong> '. $opt->name;
                                echo '&nbsp;('.$opt->price_prefix.') '.$opt->price.'<br>';
                            endforeach;
                            ?>
                        </td>
                        <td align="right" valign="middle"><?= number_format($v->qty,2) ?></td>
                        <td align="right" valign="middle"><?php
                            echo number_format($v->price, 2);
                            $qtytotal += $v->qty;
                            $subtotals +=$v->price;
                            ?></td>
                    </tr>
                <?php
                endforeach;
                ?>
                <tr>
                    <td>&nbsp;</td>
                    <td align="right" valign="middle"><strong>Total</strong></td>
                    <td align="right" valign="middle"><strong><?php echo $qtytotal ?></strong></td>
                    <td align="right" valign="middle"><strong><?php echo number_format($subtotals, 2) ?></strong></td>
                </tr>
                <!--<tr>
                <td>&nbsp;</td>
                <td colspan="3" align="right" valign="middle"><strong>Delivery Charge</strong></td>
                <td align="right" valign="middle"><strong><?php //echo $model->delivery_charge ?></strong></td>
            </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3" align="right" valign="middle"><strong>Grand Total</strong></td>
                    <td align="right" valign="middle"><strong><?php echo number_format($subtotals, 2) ?></strong></td>
                </tr>-->
            <?php }else{ ?>
                <tr>
                    <td colspan="4">No Products Found !</td>
                </tr>
            <?php }?>
            </tbody>
        </table>
    </div>

</div>
