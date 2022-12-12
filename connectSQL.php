<?php

  $hostname = "localhost";
  $base= "app";
  $loginBD= "root";
  $passBD= "root";

  try{
    $dns = "mysql:server=$hostname ; dbname=$base";
    $pdo = new PDO ($dns, $loginBD, $passBD,
    array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
  }
  catch (PDOException $e) {
    echo utf8_encode("Echec de connexion : " . $e->getMessage() . "\n");
    die();
  }
?>