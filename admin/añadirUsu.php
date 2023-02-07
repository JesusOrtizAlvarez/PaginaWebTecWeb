<?php
include("db.php");

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];
$numTelefono = $_POST['numTelefono'];
$DNI = $_POST['DNI'];
$direccion = $_POST['direccion'];
$codPostal = $_POST['codPostal'];
$esAdmin = $_POST['esAdmin'];

$registro = "INSERT INTO `usuario`(`correo`, `contraseña`, `numTelefono`, `nombre`, `DNI`, `direccion`, `codigoPostal`, `esAdmin`)
             VALUES  ('$correo','$contrasena', '$numTelefono', '$nombre', '$DNI', '$direccion', '$codigoPostal', '$esAdmin')";
$validacion = mysqli_query($conexion, $registro);

if(!$validacion){
    header('location:error/500.php');
} else {
    header('location: Usuarioadmin.php');
}