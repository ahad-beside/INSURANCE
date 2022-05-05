<div class="row open_page">
    <div class="col-md-12 custom-page-header">
        <div class="col-md-6"><h2>First Subscribers</h2></div>
    </div>

    <div class="col-md-12"><?php echo Yii::app()->easycode->showNotification(); ?></div>


    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Manage First</div>
            <div class="panel-body">

                <div class="btn-group btn-group-xs col-md-12 row" style="margin-bottom:10px;">
                    <?php
                    echo CHtml::ajaxLink("<i class='fa fa-gavel'></i> Verified", Yii::app()->createUrl('//admin/first/verified'), array(
                        'cache' => true,
                        'type' => 'POST',
                        'data' => 'js:{value : $.fn.yiiGridView.getChecked("first-grid","actionCheck[]")}',
                        "beforeSend" => 'js:function(){
                        var ask = confirm("Are you sure?");
                        if(ask==false){
                            return false;
                        }
                    }',
                        'success' => 'js:function(data){
                            $.fn.yiiGridView.update("first-grid");
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
                    ?>
                </div>
                <?php
                $this->widget('zii.widgets.grid.CGridView', array(
                    'id' => 'first-grid',
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
                          'name'=>'user_id',
                            'header'=>'User',
                            'value'=>'User::model()->findByPk($data->user_id)->email',
                        ),
                        array(
                            'name'=>'start',
                            'filter'=>false,
                        ),
                        array(
                            'name'=>'end',
                            'filter'=>false,
                        ),

                        array(
                            'name' => 'update_time',
                            'value' => 'date("d-m-y",strtotime($data->update_time))',
                            'filter' => $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                'model' => $model,
                                'attribute' => 'update_time',
                                'language' => 'en',
                                'i18nScriptFile' => 'jquery.ui.datepicker-en.js',
                                'htmlOptions' => array(
                                    'id' => 'datepicker_for_update_time',
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
                            'name' => 'amount',
                            'type' => 'raw',
                            'htmlOptions' => array('class' => 'right-align'),
                            'filterHtmlOptions' => array('class' => 'right-align'),
                            'headerHtmlOptions' => array('class' => 'right-align'),
                        ),

                        array(
                            'name' => 'verified',
                            'value'=>'($data->verified==0)?"No":"Yes"',
                            'type' => 'raw',
                            'filter' => CHtml::dropDownList("First[verified]", $model->verified, array('0' => 'No', '1' => 'Yes'), array('empty' => 'All')),
                            'htmlOptions' => array('class' => 'center-align'),
                        ),
                        array(
                            'class' => 'CButtonColumn',
                            'template' => '{delete}',
                        ),
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
    $('#datepicker_for_update_time').datepicker(jQuery.extend({showMonthAfterYear:false},jQuery.datepicker.regional['en'],{'dateFormat':'dd-mm-yy'}));
    
}
");
?>



