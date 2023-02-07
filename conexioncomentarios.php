<?php

$server = "localhost";
$username = "u678789567_CTL2";
$password = "Costasol123";
$database = "u678789567_web2";

$conexion = mysqli_connect($server, $username, $password, $database);

if(!$conexion){
    die("<script>alert('Conexion fallida.')</script>");
}
?>