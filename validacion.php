<?php
include ("db.php");

$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];
$direccion = $_POST['direccion'];
session_name("costasol");
session_start();
$_SESSION['correo']=$correo;

$consulta = "SELECT*FROM usuario WHERE correo='$correo' and contraseña = '$contrasena'";


$sql = mysqli_query($conexion, $consulta);
$row = mysqli_fetch_array($sql);


if(mysqli_num_rows($sql)!=1){
    header('location:error.php');
} else {
    if ($row[8]==1){
        header('location:admin/admin2.php');
    }else{
    header('location:home.php');
}
}



