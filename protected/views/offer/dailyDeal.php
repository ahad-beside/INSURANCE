<?php
$deal = Deal::model()->find('("' . date('Y-m-d H:i:00') . '" between `from` and `until`) and `until` > now() and name="Daily Deal"');
if (count($deal) > 0):
    $dealItems = DealItems::model()->findAll('deal_id=:id', array(':id' => $deal->id));
    ?>
    <div>
        <div class="catBlock">
            <div class="gu16 dotd-hp-widget clearfix" style="height: auto!important">
                <div>
                    <a href="#" class="dotdLink">
                        <div class="dotd-bar" style="width: 100%">
                            <div class="dotd-title"><span class="fllt fk-position-relative">DEALS</span>

                                <div class="ofTheWhite fllt"></div>
                                <span class="fllt fk-position-relative">DAY</span> <span class="triangle fllt fk-position-relative"></span></div>
                            <div class="timer">
                                <div class="fk-inline-block timerText">ENDS IN</div>
                                <div class="fk-inline-block timer-img"></div>
                                <div class="dotd-timer dotd-countdown" class="fk-inline-block" data-timestamp="1415428199000">
                                    <div id="dealCountDown"></div>
                                </div>
                            </div>
                        </div>
                    </a>

                    <div class="DOTDHPCarousel" style="height: auto!important">
                        <ul class="list-items list-carousel no-js">
                            <?php
                            if (count($dealItems) > 0) {
                                foreach ($dealItems as $items):
                                    $data = DealItems::model()->getDealItemDetails($items);
                                    if ($data['status'] == 1):
                                        ?>
                                        <li class="offers-wrap ccarousel-item no-js fk-inline-block" style="margin-right: 10px">
                                            <a class="dealsLink" href="<?php echo $data['link'] ?>" data-tracking-id="<?php echo $items->title ?>">
                                                <div class="fk-text-center offerWrap">
                                                    <div class="offerTitleWrap">
                                                        <div class="offerTitle"><?php echo $items->title; ?></div>
                                                        <div class="borderRed"></div>
                                                        <div class="triangle"></div>
                                                    </div>
                                                    <div class="fclear"></div>
                                                    <div class="newPrice fix-height tmargin7"><?php echo $data['name'] ?></div>
                                                    <div class="fk-text-center pImgContainer"><?php echo $data['image'] ?></div>
                                                    <div class="offerSubTitle"><?php echo $items->sub_title; ?></div>
                                                </div>
                                            </a>
                                        </li>
                                    <?php
                                    endif;
                                endforeach;
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <script>
            var newYear = new Date();
            //newYear = new Date(newYear.getFullYear() + 1, 1 - 1, 1);
            //newYear = new Date(2014, 12-1, 02, 06)
            newYear = new Date(<?php echo date("Y",strtotime($deal->until)).', '.date("m",strtotime($deal->until)).'-1, '.date("d",strtotime($deal->until)).', '.date("H",strtotime($deal->until)) ?>);
            $('#dealCountDown').countdown({
                until: newYear, // change this, obviously
                compact: true,
            });
        </script>
    </div>
<?php endif; ?>

