<?php
  include_once "../Include/autoClassLoader.php";

  header("Access-Control-Allow-Origin: *");
  header("Content-type: application/json");

  if(!isset($_POST["email"]) || !isset($_POST["username"]) ||
     !isset($_POST["password"]) || !isset($_POST["gender"]))
    echo json_encode(array("error"=>true,"result"=>"One of the fields is empty"));

  else {
    $user = $_POST["username"];
    $pwd = $_POST["password"];
    $email = $_POST["email"];
    $gender = $_POST["gender"];

    $controller = new Contrl();
    $result = $controller->register($user,$pwd,$email,$gender);

    echo json_encode(array("error"=>false,"result"=>$result));

  }
