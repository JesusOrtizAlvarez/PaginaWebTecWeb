<?php
include ("db.php");

$borrar_id = $_GET['idCom'];
$consulta = "DELETE FROM `comentarios` WHERE id = $borrar_id";

 
$sql = mysqli_query($conexion, $consulta);


 
    if(!$sql){
        header('location:./error/error.php');
    } else{
        header('location:reseñasAdmin.php');
    }