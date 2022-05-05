<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property integer $active
 * @property string $email
 * @property string $first_name
 * @property string $last_name
 * @property integer $phone
 */
class User extends CActiveRecord {

    public $repeatpassword;

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'user';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('password, email, role', 'required'),
            array('email', 'email'),
            array('email', 'unique', 'className' => 'User', 'attributeName' => 'email', 'enableClientValidation' => true, 'on' => 'insert'),
            array('repeatpassword', 'required', 'on' => 'insert'),
            array('repeatpassword', 'compare', 'compareAttribute' => 'password', 'on' => 'insert'),
            array('active, role', 'numerical', 'integerOnly' => true),
            array('username, phone, gender', 'length', 'max' => 20),
            array('password', 'length', 'max' => 255),
            array('email, first_name, last_name', 'length', 'max' => 50),
            array('first_name, last_name, phone, gender', 'required', 'on' => 'update'),
            array('username,first_name, last_name, phone, email_verified, verification_code, forgot_pass_code, last_login_time, from', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, username, password, active, email, first_name, last_name, phone', 'safe', 'on' => 'search'),
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
            'username' => 'Username',
            'repeatpassword' => 'Repeat Password',
            'password' => 'Password',
            'active' => 'Active',
            'email' => 'Email',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'phone' => 'Mobile Number',
            'gender' => 'Gender',
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
        $criteria->compare('username', $this->username, true);
        $criteria->compare('password', $this->password, true);
        $criteria->compare('active', $this->active);
        $criteria->compare('email', $this->email, true);
        $criteria->compare('first_name', $this->first_name, true);
        $criteria->compare('last_name', $this->last_name, true);
        $criteria->compare('phone', $this->phone);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return User the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getRoleName($id, $outpulCol) {
        $output = Roles::model()->findByPk((int) $id)->$outpulCol;
        return $output;
    }

    public function recentLoginUsers($limit = 5) {
        $list = self::model()->findAll('role!=1 and last_login_time!="0000-00-00 00:00:00" order by last_login_time desc limit ' . $limit);
        return $list;
    }

    public function findByEmail($email) {
        return self::model()->findByAttributes(array('email' => $email));
    }
    
    public function getNameById($id){
        $info = self::model()->findByPk($id);
        return $info->first_name.' '.$info->last_name;
    }

}
