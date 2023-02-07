<?php
include("db.php");

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];
$telefono = $_POST['numTelf'];

$registro = "INSERT INTO `usuario`(`correo`, `contraseña`, `numTelefono`, `nombre`) VALUES ('$correo','$contrasena','$telefono','$nombre')";
$validacion = mysqli_query($conexion, $registro);

if(mysqli_num_rows($validacion)){
    header('location:500.php');
} else {
    session_name("costasol");
    session_start();
    header('location:home.php');
}