<?php

/**
 * This is the model class for table "category_block".
 *
 * The followings are the available columns in table 'category_block':
 * @property integer $id
 * @property integer $category_id
 * @property string $sub_title
 * @property string $sub_categorires
 * @property string $first_image
 * @property string $second_image
 * @property string $third_image
 * @property integer $best_seller
 * @property integer $new_arrival
 * @property integer $update_by
 * @property string $update_time
 *
 * The followings are the available model relations:
 * @property Category $category
 */
class CategoryBlock extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'category_block';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('category_id, sub_title, sub_categorires, first_image, second_image, third_image, update_by, update_time, layout', 'required'),
            array('category_id, best_seller, new_arrival, update_by', 'numerical', 'integerOnly' => true),
            array('sub_title', 'length', 'max' => 50),
            array('sub_categorires', 'length', 'max' => 255),
            array('first_image, second_image, third_image', 'length', 'max' => 100),
            array('sort_order,status,firstlink,	secondlink,thirdlink', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, category_id, sub_title, sub_categorires, first_image, second_image, third_image, best_seller, new_arrival, update_by, update_time', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'category_id' => 'Category',
            'sub_title' => 'Sub Title',
            'sub_categorires' => 'Sub Categorires',
            'first_image' => 'First Image',
            'second_image' => 'Second Image',
            'third_image' => 'Third Image',
            'firstlink'=>'First Image Link',
            'secondlink'=>'Second Image Link',
            'thirdlink'=>'Third Image Link',
            'best_seller' => 'Best Seller',
            'new_arrival' => 'New Arrival',
            'update_by' => 'Update By',
            'update_time' => 'Update Time',
            'layout' => 'Layout',
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
        $criteria->compare('category_id', $this->category_id);
        $criteria->compare('sub_title', $this->sub_title, true);
        $criteria->compare('sub_categorires', $this->sub_categorires, true);
        $criteria->compare('first_image', $this->first_image, true);
        $criteria->compare('second_image', $this->second_image, true);
        $criteria->compare('third_image', $this->third_image, true);
        $criteria->compare('best_seller', $this->best_seller);
        $criteria->compare('new_arrival', $this->new_arrival);
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
     * @return CategoryBlock the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
