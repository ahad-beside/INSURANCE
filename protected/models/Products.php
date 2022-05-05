<?php

/**
 * This is the model class for table "products".
 *
 * The followings are the available columns in table 'products':
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $metatag_title
 * @property string $metatag_description
 * @property string $metatag_keywords
 * @property string $image
 * @property string $model
 * @property string $sku
 * @property string $price
 * @property integer $quantity
 * @property integer $minimum_quantity
 * @property integer $substract_stock
 * @property string $outofstock_status
 * @property string $seo_keyword
 * @property integer $manufacturer
 * @property integer $status
 * @property integer $sort_order
 * @property integer $update_by
 * @property string $update_time
 */
class Products extends CActiveRecord {
 public $productCategory, $pageSize, $age;
    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'products';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('amount, type,country_category', 'required'),
			array('age_start, age_end, gender, smoker, health, annual_rate,update_by, update_time,flat_rate,year', 'safe'),
			 // array('description, metatag_description, metatag_keywords, image, age, seo_keyword, sort_order, featured, accessories, last_view, delivery_details model, sku, productCategory, price, quantity, outofstock_status, ', 'safe'),
            array('amount, age_start, age_end, annual_rate, status, sort_order, update_by', 'numerical', 'integerOnly' => true),
            array('type, health', 'length', 'max' => 100),
        //    array('metatag_title, metatag_description, metatag_keywords, seo_keyword', 'length', 'max' => 255),
            array('gender, smoker', 'length', 'max' => 100),
          //  array('price', 'length', 'max' => 11),
           // array('outofstock_status', 'length', 'max' => 50),
          
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, description, metatag_title, metatag_description, metatag_keywords, image, model, sku, price, quantity, minimum_quantity, substract_stock, outofstock_status, productCategory, seo_keyword, manufacturer, status, sort_order, update_by, update_time,flat_rate,year,country_category', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
		'productcategory' => array(self::HAS_MANY, 'ProductsCategory', 'id'),
		
		'customerrequest' => array(self::HAS_MANY, 'customerRequest', 'id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'amount' => 'Amount of Insurance',
            'type' => 'Type of Insurance',
            'age_start' => 'Age Start',
            'age_end' => 'Age End',
            'gender' => 'Gender',
            'smoker' => 'Smoker',
            'health' => 'Health',
            'annual_rate' => 'Annual Rate',
			'productCategory' => 'Product Category',
            'flat_rate'=>'Flat Rate $',
            'year'=>'Yrs',
            'country_category'=>'Country Category',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;
		 $criteria->select = 't.*';
		$join = '';
		
        $criteria->compare('id', $this->id);
        $criteria->compare('amount', $this->flat_rate, true);
        $criteria->compare('flat_rate', $this->amount, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('age_start', $this->age_start, true);
        $criteria->compare('age_end', $this->age_end, true);
        $criteria->compare('gender', $this->gender, true);
        $criteria->compare('smoker', $this->smoker, true);
        $criteria->compare('health', $this->health, true);
        $criteria->compare('status', $this->status, true);
        $criteria->compare('year', $this->year, true);
        $criteria->compare('sort_order', $this->sort_order);
        $criteria->compare('update_by', $this->update_by);
        $criteria->compare('update_time', $this->update_time, true);
        $criteria->compare('country_category', $this->country_category, true);
        
		if ($this->productCategory != '') {
            $join .= ' JOIN products_category pc ON t.id = pc.product_id ';
            $criteria->addCondition('pc.category_id="' . $this->productCategory . '"', 'AND');
        }
		
         $criteria->join = $join;
        $criteria->order = 'id desc';

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Products the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getSelectedCategory($id) {
        $data = ProductsCategory::model()->findAll('product_id=:id', array(':id' => $id));
        if (count($data) > 0) {
            $sel = array();
            foreach ($data as $row):
                $sel[] = $row->category_id;
            endforeach;
        }
        return $sel;
    }

    public static function getSelectedFilter($id) {
        $data = ProductsFilter::model()->findAll('product_id=:id', array(':id' => $id));
        if (count($data) > 0) {
            $sel = array();
            foreach ($data as $row):
                $sel[] = $row->filter_id;
            endforeach;
        }
        return $sel;
    }

    public static function getSelectedRelatedProducts($id) {
        $data = ProductsRelatedProduct::model()->findAll('product_id=:id', array(':id' => $id));
        if (count($data) > 0) {
            $sel = array();
            foreach ($data as $row):
                $sel[] = $row->related_product_id;
            endforeach;
        }
        return $sel;
    }

    public static function dropDown($id = 0, $con = '') {

        $cond = 'status="1" ';

        if ((int) $id > 0)
            $cond = 'id!=' . $id;

        $data = array();
        $parent = self::model()->findAll($cond);
        foreach ($parent as $p) {
            $data[$p->id] = $p->name;
        }
        return $data;
    }

    public static function makeLink($id) {
        return Yii::app()->createUrl('//product/' . $id, array('name' => self::model()->findByPk($id)->name));
    }

    public static function getProductPrice($pid, $option = array()) {
        $pinfo = self::model()->findByPk($pid);
        $price = $pinfo->price;

        $discount = ProductsDiscount::model()->findBySql("select price from products_discount where product_id='" . $pid . "' and now() between from_date and to_date");
        if (count($discount) > 0) {
            $price = $discount->price;
        }

        if (count($option) > 0) {
            foreach ($option as $k => $op):
                //$price .='-'.$k.'<>'.$op;
                $chkOpPrice = ProductsOptionItem::model()->find('product_option_id=:poi and option_item_id=:oii', array(':poi' => $k, ':oii' => $op));
                if (count($chkOpPrice) > 0) {
                    if ($chkOpPrice->price_prefix == '+') {
                        $price += $chkOpPrice->price;
                    } else if ($chkOpPrice->price_prefix == '-') {
                        $price -= $chkOpPrice->price;
                    }
                }
            endforeach;
        }



        return $price;
    }

    public static function getPrice4Admin($productId, $price) {
        $discount = ProductsDiscount::model()->findBySql("select price from products_discount where product_id='" . $productId . "' and now() between from_date and to_date");
        if (count($discount) > 0) {
            return "<span style='text-decoration:line-through; font-size:12px;color:red'>$price</span><br>" . $discount->price;
        } else {
            return $price;
        }
    }

    public static function getPrice($price, $discount = 0) {
        $res = '';
        if ($discount > 0) {
            $percent = round(($price - $discount) / $price * 100);
            $res .='<div class="pu-discount fk-font-11"><span class="pu-old">' . Yii::app()->params->currencySymbol . $price . '</span> ' . $percent . '% OFF</div>';
            //$res .= "<span class='pre_price fk-font-11'>".Yii::app()->params->currencySymbol.$price."</span>";
            $res .= "<span class='fk-font-17 fk-bold'>" . Yii::app()->params->currencySymbol . $discount . "</span>";
        } else {
            $res .= "<span class='fk-font-17 fk-bold'>" . Yii::app()->params->currencySymbol . $price . "</span>";
        }
        return $res;
    }

    public static function filterFilter($data) {
        $allFilter = array();
        $alreadyInsert = array();
        for ($i = 0; $i < count($data); $i++):
            $getProductFilter = ProductsFilter::model()->findAll('product_id=:id', array(':id' => $data[$i]['id']));
            if (count($getProductFilter) > 0) {
                foreach ($getProductFilter as $filterval):
                    $filterInfo = Filter::model()->findByPk($filterval->filter_id);
                    $filterParent = Filter::model()->findByPk($filterInfo->parent)->name;

                    if (!in_array($filterParent, $allFilter)) {
                        if (!in_array($filterval->filter_id, $alreadyInsert)) {
                            $alreadyInsert[] = $filterval->filter_id;
                            $allFilter[$filterParent][] = array('filter_id' => $filterval->filter_id, 'filter_name' => $filterInfo->name);
                        }
                    }
                endforeach;
            }
        endfor;
        asort($allFilter);
        return $allFilter;
    }


    public static function getFeaturedProductList($catId, $limit=12) {
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, p.outofstock_status, p.update_time, pc.category_id, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");
        $command->from('products_category pc');
        $command->join('products p', 'pc.product_id=p.id');
        $command->where('pc.category_id=:catid', array(':catid' => $catId));
        $command->andwhere('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));
        $command->andwhere('p.featured=:featured', array(':featured' => 1));
        $command->group('pc.product_id');
        if($limit!='')
            $command->limit($limit);
        return $command->queryAll();
    }

    public static function getAccessoriesProductList($catId){
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, p.outofstock_status, p.update_time, pc.category_id, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");
        $command->from('products_category pc');
        $command->join('products p', 'pc.product_id=p.id');
        $command->where('pc.category_id=:catid', array(':catid' => $catId));
        $command->andwhere('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));
        $command->andwhere('p.accessories=:accessories', array(':accessories' => 1));
        $command->group('pc.product_id');
        $command->limit('12');
        return $command->queryAll();
    }

    public static function getSearchProductList($sortval = '', $q = '',$offset = 24) {
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, p.outofstock_status, p.update_time, pc.category_id, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");

        $command->from('products_category pc');

        //$command->join('products_filter pf','pc.product_id=pf.product_id');
        //$command->join('products p','pf.product_id=p.id');
        $command->join('products p', 'pc.product_id=p.id');
        $command->where('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));

        if (trim($q) != '') {
            $command->andwhere('p.name LIKE :q', array(':q' => '%' . $q . '%'));
        }
        if ($sortval != '') {
            if ($sortval == 'price_asc') {
                $field = 'p.price asc';
            } else if ($sortval == 'price_desc') {
                $field = 'p.price desc';
            } else if ($sortval == 'date_desc') {
                $field = 'p.update_time desc';
            }
            $command->order($field);
        }
        
        $command->limit(24);
        $command->offset($offset);
        
        $command->group('pc.product_id');
        //return $command->getText();
        return $command->queryAll();
    }

    public static function getProductList($catId, $filter = array(), $sortval = '', $q = '',$offset = 24,$with_offset=true) {
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, p.outofstock_status, p.update_time, pc.category_id, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");

        $command->from('products_category pc');

        //$command->join('products_filter pf','pc.product_id=pf.product_id');
        //$command->join('products p','pf.product_id=p.id');
        $command->join('products p', 'pc.product_id=p.id');

        /*if (count($filter) > 0)
            $command->join('products_filter pf', 'p.id=pf.product_id');*/

        $command->where('pc.category_id=:catid', array(':catid' => $catId));
        $command->andwhere('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));

        if (trim($q) != '') {
            $command->andwhere('p.name LIKE :q', array(':q' => '%' . $q . '%'));
        }

        /*if (count($filter) > 0) {
            $filQuery = array();
            $filQuery[] = 'and';
            foreach ($filter as $fill):
                $filQuery[] = 'pf.filter_id="' . $fill . '"';
            endforeach;
            $command->andwhere($filQuery);
        }*/
        
        if (count($filter) > 0) {
            $u=0;
            //print_r($filter);exit();
            foreach ($filter as $k=>$fill):
                $u++;
                $joinLine = 'p.id=pf' .$u.'.product_id and ';
                $joinL='(';
                foreach($filter[$k] as $v):
                    $joinL .= 'pf'.$u.'.filter_id='.$v.' or ';
                endforeach;
                $joinL = rtrim($joinL,' or ');
                $joinL .=')';
                
                $command->join('products_filter pf'.$u,$joinLine.$joinL);
            endforeach;
            
            //$command->andWhere('pf.filter_id IN ('.implode(',', $filterval).')');
            
            //asort($filterval);
            //$command->andwhere("(SELECT GROUP_CONCAT(pf.filter_id SEPARATOR ',') FROM products_filter pf where pf.product_id=p.id GROUP BY pf.product_id) IN (".  implode(',', $filterval).")");
        }

        if ($sortval != '') {
            if ($sortval == 'price_asc') {
                $field = 'p.price asc';
            } else if ($sortval == 'price_desc') {
                $field = 'p.price desc';
            } else if ($sortval == 'date_desc') {
                $field = 'p.update_time desc';
            }
            $command->order($field);
        }
        if($with_offset){
            $command->limit(24);
            $command->offset($offset);
        }
        if (count($filter) > 0)
            $command->group('pc.product_id');
        else
            $command->group('pc.product_id');


        return $command->queryAll();
        //return $command->getText();
    }

    public static function deleteProductImages($id) {
        //Delete Single Images
        $model = Products::model()->findByPk($id);
        if ($model->image != '')
            Yii::app()->easycode->deleteFile($model->image);


        //Delete Multiple Images
        if ($id != '' && $id > 0) {
            $model = new ProductsImage;
            $info = $model->findAll('product_id=:id', array(':id' => $id));
            if (count($info) > 0) {
                foreach ($info as $row):
                    Yii::app()->easycode->deleteFile($row->image);
                endforeach;
            }
        }
    }

    public static function getProductRating($id) {
        return ProductsRatingReview::model()->findBySql('select round(AVG(rating_score)) as `rating_score`, count(id) as id from products_rating_review where product_id=:id group by product_id', array(':id' => $id));
    }

    public static function getIndividualRating($id, $for) {
        $indData = ProductsRatingReview::model()->findBySql('select count(id) as id from products_rating_review where product_id=:id and rating_score=:score group by product_id', array(':id' => $id, ':score' => $for));

        $totData = self::model()->getProductRating($id);

        $count = ($indData->id > 0) ? $indData->id : 0;
        if ($totData->id > 0)
            $ratingPercent = number_format(($count / $totData->id) * 100);
        else
            $ratingPercent = 0;

        return '<div style="width:' . $ratingPercent . '%" class="progress">' . $count . '</div>';
    }

    public static function addRecentViewProducts($id) {
        if (!empty(Yii::app()->request->cookies['recentViewProducts'])) {
            $preData = Yii::app()->Cookies->getCMsg('recentViewProducts');
            if (!in_array($id, $preData)) {
                if (count(Yii::app()->Cookies->getCMsg('recentViewProducts')) == 4)
                    unset($preData[0]);
                array_push($preData, $id);
                Yii::app()->Cookies->delCMsg('recentViewProducts');
                Yii::app()->Cookies->putCMsg('recentViewProducts', array_values($preData));
            }
        } else {
            Yii::app()->Cookies->putCMsg('recentViewProducts', array($id));
        }
    }

    public static function getRecentViewProducts() {
        return Yii::app()->Cookies->getCMsg('recentViewProducts');
    }

    public static function addRecommendedProducts($id) {
        $getCategory = ProductsCategory::model()->findAll('product_id=:id', array(':id' => $id));
        $categoryId = array();
        if (count($getCategory) > 0) {
            foreach ($getCategory as $cat):
                $categoryId[] = $cat->category_id;
            endforeach;
        }

        $productId = array();
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, pc.category_id");
        $command->from('products_category pc');
        $command->join('products p', 'pc.product_id=p.id');

        $command->where('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));
        foreach ($categoryId as $cat):
            $command->orwhere('pc.id=:id', array(':id' => $cat));
        endforeach;
        $command->order('rand()');
        $command->limit(20);
        $results = $command->queryAll();
        //echo $command->getText();

        foreach ($results as $products):
            $productId[] = $products['id'];
        endforeach;

        

        if (!empty(Yii::app()->request->cookies['recommendedProducts'])) {
            $preData = Yii::app()->Cookies->getCMsg('recommendedProducts');
            if (count($preData) == 25) {
                //unset($preData[0]);
                Yii::app()->Cookies->delCMsg('recommendedProducts');
            }
            //$merge = array_merge($preData, array_values($productId));
            //$merge=array_unique($merge);
            //Yii::app()->Cookies->delCMsg('recommendedProducts');
            //Yii::app()->Cookies->putCMsg('recommendedProducts', array_values($merge));
        }
        Yii::app()->Cookies->putCMsg('recommendedProducts', array_values($productId));
    }

    public static function getRecommendedProducts() {
        return Yii::app()->Cookies->getCMsg('recommendedProducts');
    }
    
    public static function getAlsoViewedProducts($id){
        $productId = array();
        
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");
        $command->from('products p');
        $command->where('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));
        $command->andwhere('p.id!=:id', array(':id' => $id));
        $command->andwhere('p.last_view!=:lastview', array(':lastview' => '0000-00-00 00:00:00'));
        $command->order('last_view desc');
        $command->limit(25);
        $results = $command->queryAll();
        //echo $command->getText();exit();
        
        if(count($results)>0){
            foreach ($results as $products):
                $productId[] = array('id'=>$products['id'],'name'=>$products['name'],'image'=>$products['image'],'price'=>$products['price'],'discount_price'=>$products['discount_price']);
            endforeach;
        }
        return $productId;
    }
    
    public static function getAlsoViewedProducts2($id){
        $getCategory = ProductsCategory::model()->findAll('product_id=:id', array(':id' => $id));
        $categoryId = array();
        if (count($getCategory) > 0) {
            foreach ($getCategory as $cat):
                $categoryId[] = $cat->category_id;
            endforeach;
        }

        $productId = array();
        $command = Yii::app()->db->createCommand();
        $command->select("p.id, p.name, p.image, p.price, (select pd.price as pdprice from products_discount pd where now() between pd.from_date and pd.to_date and pd.product_id=p.id) as discount_price");
        $command->from('products_category pc');
        $command->join('products p', 'pc.product_id=p.id');

        $command->where('p.outofstock_status=:stock', array(':stock' => 'In Stock'));
        $command->andwhere('p.status=:status', array(':status' => 1));
        foreach ($categoryId as $cat):
            $command->orwhere('pc.id=:id', array(':id' => $cat));
        endforeach;
        $command->limit(25);
        $command->group('pc.product_id');
        $results = $command->queryAll();
        //echo $command->getText();

        foreach ($results as $products):
            $productId[] = array('id'=>$products['id'],'name'=>$products['name'],'image'=>$products['image'],'price'=>$products['price'],'discount_price'=>$products['discount_price']);
        endforeach;
        
        return $productId;
    }

}
