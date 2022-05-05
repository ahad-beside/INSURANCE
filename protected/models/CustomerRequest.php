<?php

/**
 * This is the model class for table "customer_request".
 *
 * The followings are the available columns in table 'customer_request':
 * @property integer $id
 * @property integer $insurance_id
 * @property string $name
 * @property string $email
 * @property string $phone
 * @property string $dob
 * @property integer $age
 * @property string $gender
 * @property string $smoker
 * @property string $citizen
 * @property string $residence
 * @property string $request_date
 */
class CustomerRequest extends CActiveRecord
{
public $companyCategory;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return CustomerRequest the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'customer_request';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('insurance_id, name, email, phone, dob, age, gender, companyCategory, smoker, citizen, residence, request_date,draft', 'safe'),
			array('insurance_id, age', 'numerical', 'integerOnly'=>true),
			array('name, email', 'length', 'max'=>50),
			array('phone, citizen, residence', 'length', 'max'=>20),
			array('gender, smoker', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, insurance_id, name, email, phone, dob, age, gender, smoker, citizen, residence, request_date,draft', 'safe', 'on'=>'search'),
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
		'product' => array(self::BELONGS_TO, 'Products', 'insurance_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'insurance_id' => 'Insurance',
			'name' => 'Name',
			'email' => 'Email',
			'phone' => 'Phone',
			'dob' => 'Dob',
			'age' => 'Age',
			'gender' => 'Gender',
			'smoker' => 'Smoker',
			'citizen' => 'Citizen',
			'residence' => 'Residence',
			'request_date' => 'Request Date',
			'companyCategory'=>'Insurance Offer',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;
		 $criteria->select = 't.*';
		$join = '';

		$criteria->compare('id',$this->id);
		$criteria->compare('insurance_id',$this->insurance_id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('dob',$this->dob,true);
		$criteria->compare('age',$this->age);
		$criteria->compare('gender',$this->gender,true);
		$criteria->compare('smoker',$this->smoker,true);
		$criteria->compare('citizen',$this->citizen,true);
		$criteria->compare('residence',$this->residence,true);
		$criteria->compare('request_date',$this->request_date,true);
		$criteria->compare('draft','No',true);
		
		if ($this->companyCategory != '') {
            $join .= ' JOIN products p ON t.insurance_id = p.id ';
			 $join .= ' JOIN products_category pc ON p.id = pc.category_id ';
			$join .= ' JOIN category c ON pc.category_id = c.id ';
            $criteria->addCondition('pc.category_id="' . $this->companyCategory . '"', 'AND');
        }
		
         $criteria->join = $join;
        $criteria->order = 'id desc';


		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}