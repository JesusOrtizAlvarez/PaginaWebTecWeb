<?php
include ("db.php");

$borrar_id = $_GET['idPro'];
$consulta = "DELETE FROM `productos` WHERE idProductos = $borrar_id";

 
$sql = mysqli_query($conexion, $consulta);


 
    if(!$sql){
        header('location:./error/error.php');
    } else{
        header('location:ProductosAdmin.php');
    }