<?php
include ("db.php");

$borrar_id = $_GET['idCon'];
$consulta = "DELETE FROM `consulta` WHERE idConsulta = $borrar_id";

 
$sql = mysqli_query($conexion, $consulta);


 
    if(!$sql){
        header('location:./error/error.php');
    } else{
        header('location:ConsultasAdmin.php');
    }