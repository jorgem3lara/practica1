<?php
include('conexion.php');
if(isset($_GET['m'])){
	$movimiento=$_GET['m'];
	
	$query="select cuenta,deber,haber from detalle_libro_diario where id_movimiento=".$movimiento;
	$result=mysql_query($query) or die(mysql_error());
	echo "<table border=1>
	<tr>
	<th>Cuenta</th>
	<th>Deber</th>
	<th>Haber</th>
	</tr>";
	while($r=mysql_fetch_assoc($result)){
		echo "<tr><td>".mysql_result(mysql_query("select nombre_cuenta from cuenta where codigo_mayor=".$r['cuenta']),0)."</td>
		<td>".$r['deber']."</td>
		<td>".$r['haber']."</td>
		</tr>";
		}
	echo"</table>";
	}
	else{
	header('location: libro_diario.php');		
		}

?>