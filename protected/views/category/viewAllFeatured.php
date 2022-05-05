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
                        <span class="unit pageTitle fk-bold" id="pageTitle"><h1 class="fk-bold fk-uppercase document-title">Featured Products of <?php echo $data['categoryName'] ?> </h1></span>
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

                    <div data-tracking-id="" class="gd-row bmargin6 product-row">

                        <?php
                        //$this->renderPartial('popularCategory', array('data' => $data,'id'=>$id));
                        //$this->renderPartial('productsListing', array('data' => $data)) 
                        ?>
                        <?php
//print_r($data['products']);
$displayCount = 0;
for($i=0; $i < count($data['featuredProducts']); $i++):
    $displayCount++;
    
    $productId = $data['featuredProducts'][$i]['id'];
    $image = Yii::app()->easycode->showimage($data['featuredProducts'][$i]['image'],125,125);
    $name = $data['featuredProducts'][$i]['name'];
    $url = Products::model()->makeLink($productId);
    $price = Products::model()->getPrice($data['featuredProducts'][$i]['price'], $data['featuredProducts'][$i]['discount_price']);
    
    if($displayCount == 1)
       echo '<div class="gd-col gu4 gd-row">';
?>
    <div class="gd-col gu3">
        <div data-size="store-grid-new-4"  data-pid="" class=" product-unit unit-4 browse-product ">
            <div class="pu-visual-section"> 
                <a href="<?php echo $url?>" class="pu-image fk-product-thumb " data-tracking-id="prd_img"> <?php echo $image?> </a>
            </div>
            <div class="pu-details lastUnit">
                <div class="pu-title fk-font-13"> <a title="<?php echo $name?>" href="<?php echo $url?>" data-tracking-id="prd_title" class="fk-display-block"> <?php echo $name?> </a> </div>
                <div class="pu-price">
                    <div class="pu-border-top">
                        <div class="pu-final"> <?php echo $price?></div>
                        <div class="pu-personal"> </div>
                        <ul class="pu-offers">
                        </ul>
                    </div>
                </div>
                <div class="pu-border-top">
                    <?php ProductsAttribute::model()->showProductsAttributesText($productId,4)?>
                    
                </div>
            </div>
        </div>
</div>

    <?php if($displayCount == 4)echo '</div>';?>
    <?php if($displayCount == 4){echo '<div class="fclear"></div>'; $displayCount=0;}?>

<?php endfor;?>
                        <div class="append-product-list-here"></div>
                    </div>
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