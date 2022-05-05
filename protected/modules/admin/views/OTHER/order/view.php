<?php //echo Yii::app()->easycode->getNotification(); ?>

<div class="col-md-12" style="border-bottom:2px solid #CCC; margin-top:15px; margin-bottom:12px;">
    <table width="100%" style="margin-bottom:5px;">
        <tr>
            <td width="100%" style="text-align: left; font-size: 12px;">
                <div style="margin-bottom:12px;"><img src="<?= Yii::app()->params->SITE_URL . Yii::app()->params->companyLogo ?>"/></div>
                <?php //echo Yii::app()->params->AddressPhoneEmailWeb ?>
            </td>
        </tr>
    </table>
</div>

<div class="col-md-12">
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
    <?php $this->renderPartial('orderProducts', array('model' => $model)); ?>
</div>

<?php if(!isset($_GET['print'])){?>
<div class="col-md-12">
    <?php echo CHtml::link('Print', Yii::app()->createUrl("//admin/order/view/",array('id'=>$model->id,'print'=>'true')), array("class"=>"btn
    btn-primary"))?>
</div>
<?php }else{?>
<script>window.print();</script>
<?php }?>
