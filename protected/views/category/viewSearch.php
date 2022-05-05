<div class="landing-vd newvd">
    <div class="">
    <div class="gdcol gu20">
        <div class="gd-row" style="margin-top: 10px;">
            <div class="menu-wrapper">
                <div data-tracking-id="ch_vn_mobile_filter" class="gd-col gu4">
                    <?php
                    if (count($data['category']) > 0) {
                        ?>
                        <div class="example bdws">
                            <h2 class="open">Browse</h2>
                            <div class="bganother">
                                <ul id="price_range" class="facets" valuelimit="" keepcollapsed="" displaytype="" nofilter="1">
                                    <?php asort($data['category']); foreach($data['category'] as $cat):?>
                                        <li class="facet">
                                            <a href="<?= Category::makeLink($cat).'&q='.$data['q']?>"><span class="title fk-inline-block
                                            lmargin5"><?php echo Category::model()->findByPk($cat)->name?></span></a>
                                        </li>
                                    <?php endforeach;?>
                                </ul>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                <div id="browse" class="gd-col gu12 browse-decide">
                    <div class="fk-lheader line">
                    	<div class="unit header-title">
                        <span class="unit pageTitle fk-bold" id="pageTitle"><h1 class="fk-bold fk-uppercase document-title"> <?php echo $data['categoryName'] ?> </h1></span>
                        <!--<div id="tags"> <span>New Releases</span> <a value="~new-releases" class="cross" href="/mobiles/pr?sid=tyy%2C4io"></a> </div>-->
                        </div>
                    </div>

                    <div class="lineheader">
                        <div id="searchCount">Found  <span class="count dont-show"><?php echo count($data['products'])?></span> products </div>
                        <div id="sortDropdown">
                            <form class="fk-inline-block vmiddle" id="sortform" method="GET" action="<?php echo $_SERVER['REQUEST_URI'];?>">
                                Sort by:
                                <input type="hidden" name="q" value="<?= $data['q']?>">
                                <select id="sort-dropdown" name="sortproduct"> <!--<option value="sort=featured">Featured</option> <option value="sort=popularity">Popularity</option>--> <option value="">Select to sort</option> <option value="price_desc">Price -- High to Low</option> <option value="price_asc">Price -- Low to High</option> <option value="date_desc">Newest First</option> </select>
                            </form>
                        </div>
                    </div>


                    <div data-tracking-id="" class="gd-row bmargin6 product-row">
                        <?php $this->renderPartial('//category/productsListing', array('data' => $data)) ?>
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
            </div>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">
    /*Sort Products*/
    $('#sort-dropdown').change(function(){
        $('#sortform').submit();
    });
    /*End Sort Products*/
    
    <?php if($_GET['sortproduct']){?>
    $('#sort-dropdown').val('<?php echo $_GET['sortproduct']?>');
    <?php }?>
</script>