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
                    <td align="right" valign="middle"><?= number_format($v->price,2) ?></td>

                </tr>
            <?php
                $qtytotal += $v->qty;
                $subtotals += $v->price;
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