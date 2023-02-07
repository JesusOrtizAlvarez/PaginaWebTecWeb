<?php
include("datosConexion.php");
include("db.php");

$idProd2 = $_GET['idProd2'];
$nombre = $_POST['nombre'];
$precio = $_POST['precio'];
$descripcion = $_POST['descripcion'];
$referencias = $_POST['referencias'];
$marca = $_POST['marca'];
$fabricante = $_POST['fabricante'];
$subCategoria = $_POST['subcategoria'];
$uploaddir = 'img/';
$uploadfile = $uploaddir . basename($_FILES['imagen']['name']);

if (move_uploaded_file($_FILES['imagen']['tmp_name'], "/home/u678789567/domains/recambioscostasol.store/public_html/recambiosCostaSolV2/".$uploadfile)) {
  echo "File is valid, and was successfully uploaded.\n";
} else {
   echo "Upload failed";
} 

$editar = "UPDATE `productos` SET `nombre`= '$nombre', `precio`= '$precio', `descripcion`= '$descripcion', `referencias`= '$referencias', `marca`= '$marca', `fabricante`= '$fabricante', `imagen`= '$uploadfile', `subCategoria_idSubCategoria`= '$subCategoria' WHERE `idProductos` = '$idProd2'";


$validacion = mysqli_query($conexion, $editar);


if(!$validacion){
    header('location:error/error.php');
} else {
    header('location:ProductosAdmin.php');
}