<div class="landing-vd newvd">
    <div class="">
    <div class="gdcol gu20">
        <div class="gd-row" style="margin-top: 10px;">
            <div class="menu-wrapper">
                <div data-tracking-id="ch_vn_mobile_filter" class="gd-col gu4">
                    <?php
                    if (count($data['filter_filter']) > 0) {
                        echo "<form action='".$_SERVER['REQUEST_URI']."' method='GET' id='filterform'>";
                        foreach ($data['filter_filter'] as $filkey => $filval):
                            $this->renderPartial('filter', array('filkey' => $filkey, 'filval' => $filval,'data'=>$data));
                        endforeach;
                        echo '</form>';
                    }
                    ?>
                </div>
                <div id="browse" class="gd-col gu12 browse-decide">
                    <div class="fk-lheader line">
                    	<div class="unit header-title">
                        <span class="unit pageTitle fk-bold" id="pageTitle"><h1 class="fk-bold fk-uppercase document-title"> <?php echo $data['categoryName'] ?> </h1></span>
                        <!--<div id="tags"> <span>New Releases</span> <a value="~new-releases" class="cross" href="/mobiles/pr?sid=tyy%2C4io"></a> </div>-->
                        </div>
                        <ul class="search-box " id="searchbox">
                            <li class="loading"></li>
                            <li class="box-wrapper">
                                <form method="GET" action="">
                                    <input type="hidden" value="grid" name="layout">
                                    <input type="hidden" value="tyy,4io" name="sid">
                                    <input type="hidden" value="start" name="otracker">
                                    <input type="text" placeholder="Search within <?php echo $data['categoryName']?>"  value="<?php if(isset
                                        ($data['q']) && $data['q']!=''){ echo $data['q'];}?>" name="q" style="height: 22px;width: 175px;"> <input
                                        type="submit"
                                                                                                                                     value=""
                                        class="search-button"> <div class="dont-show" value="<?php if(isset($data['q']) && $data['q']!=''){ echo $data['q'];}?>" id="search-query"></div>
                                </form>
                            </li>
                        </ul>
                    </div>

                    <div class="required-tracking category-slider" data-tracking-id="widget"><?php //$this->renderPartial('slider', array('sliderType' => 'category', 'additionalId' => $id)); ?></div>

                    <div class="lineheader">
                        <div id="searchCount">Found  <span class="count dont-show"><?php echo count($data['products'])?></span> products </div>
                        <div id="sortDropdown">
                            <form class="fk-inline-block vmiddle" id="sortform" method="GET" action="<?php echo $_SERVER['REQUEST_URI'];?>">
                                Sort by:
                                <select id="sort-dropdown" name="sortproduct"> <!--<option value="sort=featured">Featured</option> <option value="sort=popularity">Popularity</option>--> <option value="">Select to sort</option> <option value="price_desc">Price -- High to Low</option> <option value="price_asc">Price -- Low to High</option> <option value="date_desc">Newest First</option> </select>
                            </form>
                        </div>
                    </div>


                    <div data-tracking-id="" class="gd-row bmargin6 product-row">
                        <?php
                        //$this->renderPartial('popularCategory', array('data' => $data,'id'=>$id));
                        $this->renderPartial('productsListing', array('data' => $data)) ?>
                        <div class="append-product-list-here"></div>
                    </div>
                    <div class="gd-row bmargin6 product-row" style="text-align: center">
                        <input type="hidden" id="limit_offset" value="24">
                        <img src="<?= Yii::app()->baseUrl.'/images/ajax-loader.gif'?>" alt="Loading Image" style="display: none"><br>
                        <input id="load_more_product" type="button" value="Load More" class="search-bar-submit fk-font-13 fk-font-bold">
                        <script type="text/javascript">
                            $('#load_more_product').click(function(e){
                                e.preventDefault();
                                $this = $(this);
                                $this.attr('disabled','disabled');
                                $this.parent().find('img').show();
                                var offset = $('#limit_offset').val();
                                $.get("<?= Yii::app()->params->SITE_URL.$_SERVER['REQUEST_URI']?>&offset="+offset,{},function(data){
                                    if(data.trim()!=''){
                                        $('.append-product-list-here').append(data);
                                        $('#limit_offset').val(parseInt(offset)+24);
                                    }
                                    $this.parent().find('img').hide();
                                    $this.removeAttr('disabled');
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="gd-col gu4">
                    <?php

                    $getAdd = Advertisement::model()->findAll("position='Category-Sidebar' and name LIKE '%".$data["categoryName"]."%' order by sort_order");
                    if (count($getAdd) > 0) {
                        foreach ($getAdd as $adv):
                            ?>
                            <div class="section rhs-img-module"> <a class="fk-display-block line" href="<?php echo $adv->link ?>"> <?php echo Yii::app()->easycode->showimage($adv->image, 230, 105) ?> </a> </div>
                        <?php
                        endforeach;
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<form action="<?php echo $_SERVER['REQUEST_URI'];?>" method="get" id="product_filter_form" style="display: none">
    <?php if($_GET['filter']){
       foreach($data['getFilter'] as $k=>$filterItem):
           foreach($data['getFilter'][$k] as $v):
            echo "<input class='filter".$v."' type='text' name='filter[".$k."][]' value='".$v."'>";
           endforeach;
       endforeach; 
    }?>
    <input type="text" name='product_sort_val' value="<?php if($_GET['product_sort_val']){echo $_GET['product_sort_val'];}?>">
</form>

<script>
    /*Filter Products*/
    $('.filtercheck').click(function(){
        if($(this).is(':checked')){
            //alert($(this).attr('name'));
            var filspan = "<input class='filter"+$(this).val()+"' type='text' name='filter["+$(this).attr('name')+"][]' value='"+$(this).val()+"'>";
            $('#product_filter_form').append(filspan);
        }else{
            $('input[class="filter'+$(this).val()+'"]').remove();
        }
        $('#product_filter_form').submit();
        /*if($(this).is(':checked')){
            var filspan = "<span class='filter"+$(this).val()+"'><input type='text' name='filter[]' value='"+$(this).val()+"'></span>";
            $('#product_filter_form').append(filspan);
        }else{
            $('span[class="filter'+$(this).val()+'"]').remove();
        }
        $('#product_filter_form').submit();*/
    });
    /*End Filter Products*/
    
    /*Sort Products*/
    $('#sort-dropdown').change(function(){
        $('#product_filter_form').find('input[name="product_sort_val"]').val($(this).val());
        $('#product_filter_form').submit();
    });
    /*End Sort Products*/
    
    <?php if($_GET['product_sort_val']){?>
    $('#sort-dropdown').val('<?php echo $_GET['product_sort_val']?>');
    <?php }?>
</script>