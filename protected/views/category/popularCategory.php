<?php
$popular = Slideshow::model()->find('type=:type and additional_id=:catid', array(':type' => 'Popular Category', ':catid' => $id));
if (count($popular) > 0):
    $items = SlideshowItems::model()->findAll('slideshow_id=:slideid',array(':slideid'=>$popular->id));
    foreach($items as $item):
        $image = Yii::app()->easycode->showImage($item->image,230,204,false,true);
        ?>
        <div class="gd-col gu4 popular-cat-container">
            <div class="img"><a href="<?= $item->link?>"><img src="<?php echo $image?>" alt="<?= $item->title?>"></a>
                <div class="title"><a href="<?= $item->link?>"><?= $item->title?></a></div>
            </div>

        </div>
    <?php endforeach;
endif;
?>
