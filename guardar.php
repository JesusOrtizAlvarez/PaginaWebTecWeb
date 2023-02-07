<?php
	include_once('db.php');
	//recuperar las variables
	$nombre=$_POST['nombre'];
	$correo=$_POST['correo'];
	$consulta=$_POST['consulta'];
	//hacemos la sentencia de sql
	$sql="INSERT INTO `consulta`(`nombre`, `correo`, `consulta`) VALUES ('$nombre', '$correo', '$consulta')";
	//ejecutamos la sentencia de sql
	$ejecutar=mysqli_query($conexion,$sql);
	//verificamos la ejecucion
	if(!$ejecutar){
		header('location: 500.php');
	}else{
		header('location: consultas2.php');
	}
?>