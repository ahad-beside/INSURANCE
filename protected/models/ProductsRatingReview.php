<?php

/**
 * This is the model class for table "products_rating_review".
 *
 * The followings are the available columns in table 'products_rating_review':
 * @property integer $id
 * @property integer $product_id
 * @property integer $rating_score
 * @property string $review_title
 * @property string $review_description
 * @property integer $user_id
 * @property string $entry_date_time
 *
 * The followings are the available model relations:
 * @property Products $product
 * @property Products $user
 */
class ProductsRatingReview extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'products_rating_review';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('product_id, rating_score, review_title, review_description, user_id', 'required'),
			array('product_id, rating_score, user_id', 'numerical', 'integerOnly'=>true),
			array('review_title', 'length', 'max'=>20),
			array('review_description', 'length', 'min'=>100),
                        array('entry_date_time','safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, product_id, rating_score, review_title, review_description, user_id, entry_date_time', 'safe', 'on'=>'search'),
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
			'product' => array(self::BELONGS_TO, 'Products', 'product_id'),
			'user' => array(self::BELONGS_TO, 'Products', 'user_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'product_id' => 'Product',
			'rating_score' => 'Rating Score',
			'review_title' => 'Review Title',
			'review_description' => 'Review Description',
			'user_id' => 'User',
			'entry_date_time' => 'Entry Date Time',
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
		$criteria->compare('product_id',$this->product_id);
		$criteria->compare('rating_score',$this->rating_score);
		$criteria->compare('review_title',$this->review_title,true);
		$criteria->compare('review_description',$this->review_description,true);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('entry_date_time',$this->entry_date_time,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ProductsRatingReview the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
