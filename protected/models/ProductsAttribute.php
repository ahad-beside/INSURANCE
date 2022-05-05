<?php

/**
 * This is the model class for table "products_attribute".
 *
 * The followings are the available columns in table 'products_attribute':
 * @property integer $id
 * @property integer $product_id
 * @property integer $attribute_id
 * @property string $message
 *
 * The followings are the available model relations:
 * @property Products $product
 * @property Attribute $attribute
 */
class ProductsAttribute extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'products_attribute';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('product_id, attribute_id, message', 'required'),
            array('product_id, attribute_id', 'numerical', 'integerOnly' => true),
            array('message', 'length', 'max' => 255),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, product_id, attribute_id, message', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'product' => array(self::BELONGS_TO, 'Products', 'product_id'),
            'attribute' => array(self::BELONGS_TO, 'Attribute', 'attribute_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'product_id' => 'Product',
            'attribute_id' => 'Attribute',
            'message' => 'Message',
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

        $criteria->compare('id', $this->id);
        $criteria->compare('product_id', $this->product_id);
        $criteria->compare('attribute_id', $this->attribute_id);
        $criteria->compare('message', $this->message, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ProductsAttribute the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function showProductsAttributesText($productId, $limit = 5) {
        $get = self::model()->findAll('product_id=:id limit '.$limit,array(':id'=>$productId));
        if(count($get)>0){
            $res = '<ul class="pu-usp">';
            foreach ($get as $row):
                $res .= '<li><span class="text">'.$row->message.'</span></li>';
            endforeach;
            $res .= '</ul>';
            echo $res;
        }
    }

}
