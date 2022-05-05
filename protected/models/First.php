<?php

/**
 * This is the model class for table "first".
 *
 * The followings are the available columns in table 'first':
 * @property integer $id
 * @property integer $user_id
 * @property string $amount
 * @property string $start
 * @property string $end
 * @property string $update_time
 */
class First extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'first';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('user_id, amount', 'required'),
            array('user_id', 'numerical', 'integerOnly' => true),
            array('amount', 'length', 'max' => 11),
            array('start, end, update_time, verified', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, user_id, amount, start, end, update_time', 'safe', 'on' => 'search'),
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
            'user_id' => 'User',
            'amount' => 'Amount',
            'start' => 'Start',
            'end' => 'End',
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
        $criteria->compare('user_id', $this->user_id);
        $criteria->compare('amount', $this->amount, true);
        $criteria->compare('start', $this->start, true);
        $criteria->compare('end', $this->end, true);
        if($this->update_time!='')
        $criteria->compare('update_time', date("Y-m-d",strtotime($this->update_time)), true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return First the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
