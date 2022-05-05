<?php

/**
 * This is the model class for table "filter".
 *
 * The followings are the available columns in table 'filter':
 * @property integer $id
 * @property string $name
 * @property integer $parent
 * @property integer $sort_order
 * @property integer $update_by
 * @property string $update_time
 */
class Filter extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'filter';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('name, sort_order, update_by, update_time', 'required'),
            array('parent, sort_order, update_by', 'numerical', 'integerOnly' => true),
            array('name', 'length', 'max' => 100),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, parent, sort_order, update_by, update_time', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'name' => 'Name',
            'parent' => 'Parent',
            'sort_order' => 'Sort Order',
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
        $criteria->compare('name', $this->name, true);
        $criteria->compare('parent', $this->parent);
        $criteria->compare('sort_order', $this->sort_order);
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
     * @return Filter the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /* Multi Category Dropdown */
    public static function dropDown($withoutParent=true) {
        $data = array();
        $parent = self::model()->findAll('parent is NULL');
        foreach ($parent as $p) {
            if($withoutParent)
                $data[$p->id] = $p->name;
            $childItems = self::model()->getChildItems($p->id, $p->name);
            $data = self::model()->array_merge_custom($data, $childItems);
        }
        return $data;
    }

    public static function getChildItems($id, $name) {
        $data = array();
        $child = self::model()->findAll('parent=:parentid', array(':parentid' => $id));
        foreach ($child as $c) {
            $data[$c->id] = $name . ' > ' . $c->name;
            $childItems = self::model()->getChildItems($c->id, $name . ' > ' . $c->name);
            $data = self::model()->array_merge_custom($data, $childItems);
        }
        return $data;
    }
    
    function array_merge_custom($first, $second) {
        $result = array();
        foreach ($first as $key => $value) {
            $result[$key] = $value;
        }
        foreach ($second as $key => $value) {
            $result[$key] = $value;
        }

        return $result;
    }
    /* End Multi Category Dropdown */
    
    public static function getFilterName($id = '', $name = '') {
        $get = self::model()->findByPk($id);
        if ((int) $get->parent > 0) {
            $parent = self::model()->findByPk($get->parent);
            $name = self::model()->getFilterName($get->parent, $parent->name) . ' > ' . $name;
        }
        return $name;
    }
}
