<?php

/**
 * This is the model class for table "deal_items".
 *
 * The followings are the available columns in table 'deal_items':
 * @property integer $id
 * @property integer $deal_id
 * @property string $title
 * @property string $type
 * @property integer $additional_id
 *
 * The followings are the available model relations:
 * @property Deal $deal
 */
class DealItems extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'deal_items';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('deal_id, title, sub_title, type, additional_id', 'required'),
            array('deal_id, additional_id', 'numerical', 'integerOnly' => true),
            array('title,sub_title', 'length', 'max' => 100),
            array('type', 'length', 'max' => 20),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, deal_id, title, type, additional_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'deal' => array(self::BELONGS_TO, 'Deal', 'deal_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'deal_id' => 'Deal',
            'title' => 'Title',
            'sub_title' => 'Sub Title',
            'type' => 'Type',
            'additional_id' => 'Additional',
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
        $criteria->compare('deal_id', $this->deal_id);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('additional_id', $this->additional_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return DealItems the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getAdditionalIdName($type, $id) {
        if ($type == 'category') {
            return Category::model()->getCategoryName($id);
        } elseif ($type == 'product') {
            return Products::model()->findByPk($id)->name;
        }
    }

    public static function getDealItemDetails($items) {
        $data = array();
        if ($items->type == 'category') {
            $category = Category::model()->findByPk($items->additional_id);
            $data['name'] = $category->name;
            $data['image'] = Yii::app()->easycode->showImage($category->image, 125, 125);
            $data['link'] =  Category::model()->makeLink($items->additional_id);
            $data['status'] = $category->status;
        } elseif ($items->type == 'product') {
            $product = Products::model()->findByPk($items->additional_id);
            $data['name'] = $product->name;
            $data['image'] = Yii::app()->easycode->showImage($product->image, 125, 125);
            $data['link']=  Products::model()->makeLink($items->additional_id);
            $data['status'] = $product->status;
        }
        return $data;
    }

}
