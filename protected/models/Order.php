<?php

/**
 * This is the model class for table "order".
 *
 * The followings are the available columns in table 'order':
 * @property integer $id
 * @property string $order_number
 * @property integer $user_id_fk
 * @property string $total
 * @property string $delivery_charge
 * @property string $discount
 * @property string $grand_total
 * @property string $delivery_info
 * @property string $order_date
 * @property string $update_time
 * @property integer $update_by
 */
class Order extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'order';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('order_number, grand_total, delivery_info, update_by, payment_method', 'required'),
            array('total','required','message'=>'Minimum one product need to make order.'),
            array('user_id_fk, update_by, payment_method', 'numerical', 'integerOnly' => true),
            array('order_number', 'length', 'max' => 20),
            array('total, delivery_charge, discount, grand_total', 'length', 'max' => 11),
            array('delivery_info', 'length', 'max' => 300),
            array('user_id_fk,delivery_charge, discount,order_date, update_time, status', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, order_number, user_id_fk, total, delivery_charge, discount, grand_total, delivery_info, order_date, update_time, update_by', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'userIdFk' => array(self::BELONGS_TO, 'User', 'user_id_fk'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'order_number' => 'Order Number',
            'user_id_fk' => 'User Id Fk',
            'total' => 'Total',
            'delivery_charge' => 'Delivery Charge',
            'discount' => 'Discount',
            'grand_total' => 'Grand Total',
            'delivery_info' => 'Delivery Information',
            'order_date' => 'Order Date',
            'update_time' => 'Update Time',
            'update_by' => 'Update By',
            'status' => 'Status',
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
    public function search($userId='') {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('order_number', $this->order_number, true);
        if($userId=='')
            $criteria->compare('user_id_fk', $this->user_id_fk);
        else
            $criteria->compare('user_id_fk', $userId);
        $criteria->compare('total', $this->total, true);
        $criteria->compare('delivery_charge', $this->delivery_charge, true);
        $criteria->compare('discount', $this->discount, true);
        $criteria->compare('grand_total', $this->grand_total, true);
        $criteria->compare('delivery_info', $this->delivery_info, true);
        
        if($this->order_date!='')
        $criteria->compare('order_date', date("Y-m-d",strtotime($this->order_date)), true);
        
        $criteria->compare('update_time', $this->update_time, true);
        $criteria->compare('update_by', $this->update_by);
        $criteria->compare('status', $this->status, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
            'sort'=>array(
                'defaultOrder'=>'id DESC',
            ),
            'pagination'=>array(
                'pageSize'=>50,
            ),
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Order the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    
    public static function genOrderNumber($prefix){
        $count = self::model()->count('order_date LIKE :thisMonth',array(':thisMonth'=>date('Y-m').'%'));
        return $prefix.date('ym').($count+1);
    }
    
    public static function calDeliveryCharge($total){
        return 0;
    }

}
