<?php
  class Contrl extends Model{

    public function login($user,$pwd){
      $sql = "SELECT * FROM accounts WHERE username=?;";
      $result = $this->getIt($sql,$user);

      if(count($result) < 1)
        return "Wrong username!";

      foreach ($result as $value) {
        if(password_verify($pwd,$value["passcode"]))
          return $value["token"];
        else
          return "Wrong password!";
      }
    }

    public function register($user,$pwd,$email,$gender){
      $password = password_hash($pwd,PASSWORD_DEFAULT);
      $str=rand();
      $token = md5($str);
      $img = "https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png";

      $sql = "INSERT INTO accounts(username,passcode,email,gender,token,img) VALUES(?,?,?,?,?,?);";
      $params = array($user,$password,$email,$gender,$token,$img);
      $this->setAll($sql,$params);
    }

    public function create($message,$to){
      $from = 1;
      $sql = "INSERT INTO messages(message,from_id,to_id) VALUE(?,?,?);";
      $this->setAll($sql,array($message,$from,$to));
      return true;
    }
  }
