<?php
  include_once "../Include/autoClassLoader.php";

  header("Access-Control-Allow-Origin: *");
  header("Content-type: application/json");

  if(!isset($_POST["username"]) || !isset($_POST["password"]))
    echo json_encode(array("error"=>true,"result"=>"Username or Password is empty"));

  else {
    $user = $_POST["username"];
    $pwd = $_POST["password"];

    $controller = new Contrl();
    $result = $controller->login($user,$pwd);

    echo json_encode(array("error"=>false,"result"=>$result));

  }
