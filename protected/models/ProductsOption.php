<?php

/**
 * This is the model class for table "products_option".
 *
 * The followings are the available columns in table 'products_option':
 * @property integer $id
 * @property integer $product_id
 * @property integer $option_id
 * @property string $isrequired
 * @property integer $update_by
 * @property string $update_time
 *
 * The followings are the available model relations:
 * @property Products $product
 * @property ProductsOptionItem[] $productsOptionItems
 */
class ProductsOption extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'products_option';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('product_id, option_id, isrequired, update_by', 'required'),
            array('product_id, option_id, update_by', 'numerical', 'integerOnly' => true),
            array('isrequired', 'length', 'max' => 5),
            array('update_time', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, product_id, option_id, isrequired, update_by, update_time', 'safe', 'on' => 'search'),
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
            'productsOptionItems' => array(self::HAS_MANY, 'ProductsOptionItem', 'product_option_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'product_id' => 'Product',
            'option_id' => 'Option',
            'isrequired' => 'Isrequired',
            'update_by' => 'Update By',
            'update_time' => 'Update Time',
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
        $criteria->compare('option_id', $this->option_id);
        $criteria->compare('isrequired', $this->isrequired, true);
        $criteria->compare('update_by', $this->update_by);
        $criteria->compare('update_time', $this->update_time, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ProductsOption the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
