<?php
include("datosConexion.php");
include("db.php");

$idUsu = $_GET['idUsu'];
$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$numTelefono = $_POST['numTelefono'];
$DNI = $_POST['DNI'];


$editar = "UPDATE `usuario` SET `correo`= '$correo', `nombre`= '$nombre', `DNI`= '$DNI', `numTelefono`='$numTelefono'  WHERE `idUsuario` = '$idUsu'";


$validacion = mysqli_query($conexion, $editar);


if(!$validacion){
    header('location:error/error.php');
} else {
    header('location:Usuarioadmin.php');
}
