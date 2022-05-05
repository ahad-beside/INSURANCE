<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>Orders</h2></div>
        <div class="col-md-6 action-button">
            <?php
            /* echo CHtml::link('<i class="fa fa-plus"></i>', $this->createUrl('products/create'), array('class' => 'btn btn-default btn-circle', 'title' => 'New Product'));
              echo CHtml::link('<i class="fa fa-list"></i>', $this->createUrl('products/admin'), array('class' => 'btn btn-default btn-circle', 'title' => 'All Products')); */
            ?>
        </div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage Orders</div>
            <div class="panel-body">

                <div class="btn-group btn-group-xs col-md-12 row" style="margin-bottom:10px;">
                    <?php
                    echo CHtml::ajaxLink("<i class='fa fa-gavel'></i> Hold", Yii::app()->createUrl('//admin/order/hold'), array(
                        'cache' => true,
                        'type' => 'POST',
                        'data' => 'js:{value : $.fn.yiiGridView.getChecked("order-grid","actionCheck[]")}',
                        "beforeSend" => 'js:function(){
                        var ask = confirm("Are you sure?");
                        if(ask==false){
                            return false;
                        }
                        //$("#showoverlay").addClass("overlay");
                    }',
                        'success' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            $.fn.yiiGridView.update("order-grid");
                            data = $.parseJSON (data);
                        if(data.msg=="success"){
                            alert(data.totalOrders + " Orders hold successfully.");
                        }else if(data.msg=="error"){
                            alert("Error occured !!!");
                        }
                    }',
                        'error' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            alert("Problem occured !!!");
                            //alert(JSON.stringify(data));
                            //alert("e"+data.msg);
                        }',
                    ), array('class' => 'btn btn-sm', 'style' => 'background-color:#E5E5E5; color:black; font-weight:normal;', 'id' =>
                        'holdOrder' . uniqid()));

                    echo CHtml::ajaxLink("<i class='fa fa-truck'></i> Shipped", Yii::app()->createUrl('//admin/order/shipped'), array(
                        'cache' => true,
                        'type' => 'POST',
                        'data' => 'js:{value : $.fn.yiiGridView.getChecked("order-grid","actionCheck[]")}',
                        "beforeSend" => 'js:function(){
                        var ask = confirm("Are you sure?");
                        if(ask==false){
                            return false;
                        }
                        //$("#showoverlay").addClass("overlay");
                    }',
                        'success' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            $.fn.yiiGridView.update("order-grid");
                            data = $.parseJSON (data);
                        if(data.msg=="success"){
                            alert(data.totalOrders + " Orders shipped successfully.");
                        }else if(data.msg=="error"){
                            alert("Error occured !!!");
                        }
                    }',
                        'error' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            alert("Problem occured !!!");
                            //alert(JSON.stringify(data));
                            //alert("e"+data.msg);
                        }',
                    ), array('class' => 'btn btn-sm', 'style' => 'background-color:lightseagreen; color:black; font-weight:normal;', 'id' =>
                        'shippedOrder' . uniqid()));

                    echo CHtml::ajaxLink("<i class='fa fa-truck'></i> Delivered", Yii::app()->createUrl('//admin/order/delivered'), array(
                        'cache' => true,
                        'type' => 'POST',
                        'data' => 'js:{value : $.fn.yiiGridView.getChecked("order-grid","actionCheck[]")}',
                        "beforeSend" => 'js:function(){
                        var ask = confirm("Are you sure?");
                        if(ask==false){
                            return false;
                        }
                        //$("#showoverlay").addClass("overlay");
                    }',
                        'success' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            $.fn.yiiGridView.update("order-grid");
                            data = $.parseJSON (data);
                        if(data.msg=="success"){
                            alert(data.totalOrders + " Orders delivered successfully.");
                        }else if(data.msg=="error"){
                            alert("Error occured !!!");
                        }
                    }',
                        'error' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            alert("Problem occured !!!");
                            //alert(JSON.stringify(data));
                            //alert("e"+data.msg);
                        }',
                    ), array('class' => 'btn btn-sm', 'style' => 'background-color:lightgreen; color:black; font-weight:normal;', 'id' =>
                        'deliveredOrder' . uniqid()));

                    echo CHtml::ajaxLink("<i class='fa fa-ban'></i> Canceled", Yii::app()->createUrl('//admin/order/canceled'), array(
                        'cache' => true,
                        'type' => 'POST',
                        'data' => 'js:{value : $.fn.yiiGridView.getChecked("order-grid","actionCheck[]")}',
                        "beforeSend" => 'js:function(){
                        var ask = confirm("Are you sure?");
                        if(ask==false){
                            return false;
                        }
                        //$("#showoverlay").addClass("overlay");
                    }',
                        'success' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            $.fn.yiiGridView.update("order-grid");
                            data = $.parseJSON (data);
                        if(data.msg=="success"){
                            alert(data.totalOrders + " Orders canceled successfully.");
                        }else if(data.msg=="error"){
                            alert("Error occured !!!");
                        }
                    }',
                        'error' => 'js:function(data){
                            //$("#showoverlay").removeClass("overlay");
                            alert("Problem occured !!!");
                            //alert(JSON.stringify(data));
                            //alert("e"+data.msg);
                        }',
                    ), array('class' => 'btn btn-sm', 'style' => 'background-color:red; color:white; font-weight:normal;', 'id' =>
                        'canceledOrder' . uniqid()));
                    ?>
                </div>
                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'order-grid',
                    'htmlOptions' => array('class' => 'col-md-12'),
                    'itemsCssClass' => 'table table-hover table-striped custom-data-table',
                    'dataProvider' => $model->search(),
                    'filter' => $model,
                    'afterAjaxUpdate' => 'reinstallDatePicker',
                    'columns' => array(
                        array(
                            'class' => 'CCheckBoxColumn',
                            'value' => '$data->id',
                            'selectableRows' => '2',
                            'id' => 'actionCheck'
                        ),
                        array(
                            'class' => 'IndexColumn',
                            'header' => 'Sl',
                            'headerHtmlOptions' => array('style' => 'width:20px;'),
                        ),
                        array(
                            'name' => 'order_number',
                            'type' => 'raw',
                            'value' => 'Chtml::link($data->order_number, Yii::app()->createUrl("//admin/order/view/$data->id"), array("target"=>"_blank"))',
                        ),

                        array(
                            'name' => 'order_date',
                            'value' => '($data->order_date!="")?date("d-m-y",strtotime($data->order_date)):""',
                            'filter' => $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                'model' => $model,
                                'attribute' => 'order_date',
                                'language' => 'en',
                                'i18nScriptFile' => 'jquery.ui.datepicker-en.js',
                                'htmlOptions' => array(
                                    'id' => 'datepicker_for_order_date',
                                    'size' => '10',
                                ),
                                'defaultOptions' => array(// (#3)
                                    'showOn' => 'focus',
                                    'dateFormat' => 'dd-mm-yy',
                                    'showOtherMonths' => true,
                                    'selectOtherMonths' => true,
                                    'changeMonth' => true,
                                    'changeYear' => true,
                                    'showButtonPanel' => true,
                                )
                            ), true),
                        ),
                        array(
                            'name' => 'grand_total',
                            'type' => 'raw',
                            'htmlOptions' => array('class' => 'right-align'),
                            'filterHtmlOptions' => array('class' => 'right-align'),
                            'headerHtmlOptions' => array('class' => 'right-align'),
                        ),

                        array(
                            'name' => 'status',
                            'type' => 'raw',
                            'filter' => CHtml::dropDownList("Order[status]", $model->status, array('Pending' => 'Pending', 'Shipped' => 'Shipped', 'Delivered' => 'Delivered'), array('empty' => 'All')),
                            'htmlOptions' => array('class' => 'center-align'),
                        ),
                        /*
                          'description',
                          'metatag_title',
                          'metatag_description',
                          'metatag_keywords',
                          'image',

                          'sku',


                          'minimum_quantity',
                          'substract_stock',
                          'outofstock_status',
                          'seo_keyword',
                          'manufacturer',

                          'sort_order',
                          'update_by',
                          'update_time',
                         */
                        /*array(
                            'class' => 'CButtonColumn',
                            'template' => '{update}',
                        ),*/
                    ),
                ));
                ?>
            </div>
        </div>
    </div>
</div>

<style>
    .custom-data-table tbody tr td {
        vertical-align: middle
    }

    .right-align {
        text-align: right
    }

    center-align {
        text-align: center
    }
</style>

<?php
Yii::app()->clientScript->registerScript('re-install-date-picker', "
function reinstallDatePicker(id, data) {
    //use the same parameters that you had set in your widget else the datepicker will be refreshed by default
    $('#datepicker_for_order_date').datepicker(jQuery.extend({showMonthAfterYear:false},jQuery.datepicker.regional['en'],{'dateFormat':'dd-mm-yy'}));
    
}
");
?>



