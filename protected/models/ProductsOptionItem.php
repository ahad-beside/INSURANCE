<?php

/**
 * This is the model class for table "products_option_item".
 *
 * The followings are the available columns in table 'products_option_item':
 * @property integer $id
 * @property integer $product_option_id
 * @property integer $option_item_id
 * @property integer $quantity
 * @property string $price_prefix
 * @property string $price
 *
 * The followings are the available model relations:
 * @property ProductsOption $productOption
 */
class ProductsOptionItem extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'products_option_item';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('product_id, product_option_id, option_item_id, quantity, price_prefix, price', 'required'),
			array('product_option_id, option_item_id, quantity', 'numerical', 'integerOnly'=>true),
			array('price_prefix', 'length', 'max'=>1),
			array('price', 'length', 'max'=>11),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, product_option_id, option_item_id, quantity, price_prefix, price', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'productOption' => array(self::BELONGS_TO, 'ProductsOption', 'product_option_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'product_option_id' => 'Product Option',
			'option_item_id' => 'Option Item',
			'quantity' => 'Quantity',
			'price_prefix' => 'Price Prefix',
			'price' => 'Price',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('product_option_id',$this->product_option_id);
		$criteria->compare('option_item_id',$this->option_item_id);
		$criteria->compare('quantity',$this->quantity);
		$criteria->compare('price_prefix',$this->price_prefix,true);
		$criteria->compare('price',$this->price,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ProductsOptionItem the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
