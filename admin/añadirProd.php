<?php
include("db.php");

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

$registro = "INSERT INTO `productos`(`nombre`, `precio`, `descripcion`, `referencias`, `marca`, `fabricante`, `imagen`, `subCategoria_idSubCategoria`) 
             VALUES  ('$nombre','$precio', '$descripcion', '$referencias', '$marca', '$fabricante', '$uploadfile', '$subCategoria')";
$validacion = mysqli_query($conexion, $registro);

if(!$validacion){
    header('location:error/error.php');
} else {
    header('location:ProductosAdmin.php');
}