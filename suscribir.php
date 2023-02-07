<?php
	include_once('DatosConexion.php');
	include_once('db.php');

	
	//recuperar las variables
	$correo=$_POST['correo'];
	//hacemos la sentencia de sql
	$sql="INSERT INTO `newsletter`(`correo`) VALUES ('$correo')";
	//ejecutamos la sentencia de sql
	$ejecutar=mysqli_query($conexion,$sql);
	//verificamos la ejecucion
	if(!$ejecutar){
    header('location:500.php');
} else {
    header('location:home.php');
}
?>
