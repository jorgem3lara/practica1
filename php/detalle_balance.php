<?php
include('conexion.php');
if((!isset($_GET['m']))&&(!isset($_GET['a']))){
	header('location:balance_comprobacion.php');	
	}
	else{
		$mes=$_GET['m'];
		$ano=$_GET['a'];
$query="select nombre_cuenta,sum(deber) as deber,sum(haber) as haber from detalle_libro_diario inner join cuenta on(codigo_mayor=cuenta) inner join libro_diario on(detalle_libro_diario.id_movimiento=libro_diario.id_movimiento) where mes=".$mes." and ano=".$ano." group by cuenta order by tipo_cuenta ";
$result=mysql_query($query) or die(mysql_error());
echo "<b>Balance del mes ".$mes." y año ".$ano."</b>";
echo "<table border=1>
<tr>
<th>Cuenta</th>
<th>Deber</th>
<th>Haber</th>
</tr>";
while($r=mysql_fetch_assoc($result)){
echo "<tr>
<td>".$r['nombre_cuenta']."</td>
<td>".$r['deber']."</td>
<td>".$r['haber']."</td>
</tr>";	
	}
echo "</table>";
		}
?>