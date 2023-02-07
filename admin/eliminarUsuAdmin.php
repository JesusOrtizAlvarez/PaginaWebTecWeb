<?php
include ("db.php");

$borrar_id = $_GET['idUsu'];
$consulta = "DELETE FROM `usuario` WHERE idUsuario = $borrar_id";

 
$sql = mysqli_query($conexion, $consulta);


 
    if(!$sql){
        header('location:./error/error.php');
    } else{
        header('location:Usuarioadmin.php');
    }