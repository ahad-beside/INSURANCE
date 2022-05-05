<?php
/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity {

    private $_id;
    public $user;
    
    public function __construct($username,$password=null)
    {
        // sets username and password values
        parent::__construct($username,$password);

        /*$this->user = User::model()->find('LOWER(email)=?',array(strtolower($this->username)));

        if ($this->user === null)
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        elseif($password === null)
        {

            $this->beforeAuthentication();
            $this->errorCode=self::ERROR_NONE;
        }*/
        $this->authenticate();
    }

    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */
    public function authenticate() {
        $this->user = User::model()->find("email=:username and active='1' and email_verified='1'", array('username' => $this->username));
        
        //$salt = substr('0e70678cbf6a213cf5224ad9e882fbcb02fb73f7', 0, 10);
        //$salt = substr($user->password, 0, 10);
        //$db_password = $salt . substr(sha1($salt . $this->password), 0, -10);
        
        if ($this->user === null)
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        else if ($this->user->password !== md5($this->password))
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        else {
            $this->_id = $this->user->id;
            $this->setState('userId', $this->user->id);
            $this->setState('userName', $this->user->username);
            $this->setState('userEmail', $this->user->email);
            $this->setState('userFirstname', $this->user->first_name);
            $this->setState('userLastname', $this->user->last_name);
            $this->setState('userPhone', $this->user->phone);
            $this->setState('userFrom', $this->user->from);
            $this->setState('roles', User::model()->getRoleName($this->user->role,'name'));//get user role
            $this->setState('roleId', User::model()->getRoleName($this->user->role,'id'));//get user role
            $this->errorCode = self::ERROR_NONE;
            User::model()->updateByPk($this->user->id,array('last_login_time'=>date("Y-m-d H:i:s")));//save last login time
        }
        return !$this->errorCode;
    }
    
    public function getId() {
        return $this->_id;
        //return $this->user->id;
    }
    
    public function getName()
    {
        return $this->user->email;
    }

    public function beforeAuthentication()
    {
        // do before authenctiation work
        $this->setState('userId', $this->user->id);
        $this->setState('userName', $this->user->email);
        $this->setState('userEmail', $this->user->email);
        $this->setState('userFirstname', $this->user->first_name);
        $this->setState('userLastname', $this->user->last_name);
    }

}
