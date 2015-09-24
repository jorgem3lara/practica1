<?php
include('conexion.php');
$query="select * from cuenta order by tipo_cuenta";
$resultado=mysql_query($query) or die(mysql_error());
echo "<br><b><a href=\"index.php?sec=registro_cuenta\"> Agregar Nueva Cuenta </a></b>";
echo "<br><b><a href=\"index.php?sec=borrarc\"> Eliminar una Cuenta </a></b>";
echo "<table border=1>
<tr>
<th>Tipo de Cuenta</th>
<th> Codigo de Mayor </th>
<th> Nombre de Cuenta </th>
<th> Descripcion </th></tr>";
while($r=mysql_fetch_assoc($resultado)){
	$q2="select nombre_tipo_cuenta from tipo_cuenta where id_tipo_cuenta=".$r['tipo_cuenta'];
	echo "<tr>
	<td>";
	echo mysql_result(mysql_query($q2),0);
	echo "<td>".$r['codigo_mayor']."
	<td>".$r['nombre_cuenta']."
	<td>".$r['descripcion']."
	</tr>";
	};
echo "</table>";
?>