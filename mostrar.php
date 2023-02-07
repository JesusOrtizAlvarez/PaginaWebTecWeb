<?php //Abrimos php
	include_once('DatosConexion.php');
	include_once('db.php');
	//Se Hace la sentencia sql:
	$sql="SELECT * FROM consulta"; //->Donde * es igual a todos los campos entonces la sentencia seria esta-> seleccionamos todos los campos de la tabla datos
	//ejecutamos la sentencia de slq:
	$ejecutar=mysqli_query($conexion,$sql);
	//traenos todos los valores en un array:
	$datos=mysqli_fetch_array($ejecutar);
	//imprimimos los datos de manera dinamica
	echo "<table border='1'>";
	echo"<tr>";
	echo "<th align='center'><b>Nombre</th>";
	echo "<th align='center'><b>Correo</th>";
	echo "<th align='center'><b>Consulta</th>";
	echo"</tr>";
	for($i=0; $i<$datos; $i++){
		echo"<tr><td>$datos[0]</td>";
		echo"<td>$datos[1]</td>";
		echo"<td>$datos[2]</td>";
		echo"</tr>";
		$datos=mysqli_fetch_array($ejecutar);
	}
	echo"</table>";
?>