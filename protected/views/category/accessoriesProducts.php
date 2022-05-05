<?php if(count($data['accessoriesProducts'])>0):?>
    <h2 class="headers">
        <span class="fllt fk-uppercase fk-font-16 lmargin10"><?= $data['categoryName']?> Accessories</span>
    </h2>
<?php endif;?>

<?php
//print_r($data['products']);
$displayCount = 0;
for($i=0; $i < count($data['accessoriesProducts']); $i++):
    $displayCount++;
    
    $productId = $data['accessoriesProducts'][$i]['id'];
    $image = Yii::app()->easycode->showimage($data['accessoriesProducts'][$i]['image'],125,125);
    $name = $data['accessoriesProducts'][$i]['name'];
    $url = Products::model()->makeLink($productId);
    $price = Products::model()->getPrice($data['accessoriesProducts'][$i]['price'], $data['accessoriesProducts'][$i]['discount_price']);
    
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
