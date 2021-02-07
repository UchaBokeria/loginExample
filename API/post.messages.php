<?php
  include_once "../Include/autoClassLoader.php";

  header("Access-Control-Allow-Origin: *");
  header("Content-type: application/json");

  if(!isset($_GET["api_key"]))
    echo json_encode(array("error"=>true,"result"=>"api key is empty"));

  else {
    $key = $_GET["api_key"];
    $message = $_GET["message"];
    $to = $_GET["to"];

    $controller = new Contrl();
    $result = $controller->create($message,$to);

    echo json_encode(array("error"=>false,"result"=>$result));


  }
