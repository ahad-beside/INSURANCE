<div class="row open_page">
    

    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                New Deal Items For <strong><?php echo $data['dealName']?></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->renderPartial('_form', array('model' => $model)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>