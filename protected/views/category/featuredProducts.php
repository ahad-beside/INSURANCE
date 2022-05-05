<?php if(count($data['featuredProducts'])>0):?>
    <h2 class="headers">
        <span class="fllt fk-uppercase fk-font-16 lmargin10">Featured <?= $data['categoryName']?></span>
        <span class="fllt fk-uppercase fk-font-16 rmargin10" style="float: right">
            <a href="<?= $this->createUrl('//category/featuredProducts',array('category'=>$id))?>" style="color: white">View All</a>
        </span>
    </h2>
<?php endif;?>

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
       echo '<div class="gd-col gu12 gd-row">';
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
