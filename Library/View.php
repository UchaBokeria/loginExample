<?php
  class View extends Model{
    public function read($key){
      $sql = "SELECT messages.id,accounts.username as getter,accounts.id as getter_id,accounts.img as icon,messages.message,messages.createdAT
              FROM messages JOIN accounts on messages.to_id = accounts.id WHERE accounts.token = 'a57ea75988ce69b2dda5b339412f6cea' or accounts.username = 'user'
              ORDER BY createdAT ASC";
      return $this->getIt($sql,$key);
    }
  }
