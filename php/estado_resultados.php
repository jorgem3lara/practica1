<?php
include('conexion.php');
$query="select  DISTINCT mes,ano from libro_diario order by ano";
$result=mysql_query($query) or die(mysql_error());
echo "<table border=1>
<tr>
<th>Año</th>
<th>Mes</th>
</tr>";
while($r=mysql_fetch_assoc($result)) {
	$mes=$r['mes'];
	$ano=$r['ano'];
	echo "<tr>
	<td><a href=\"index.php?sec=detalle_diario&a=".$ano."&m=".$mes."\">".$ano."</a></td>
	<td><a href=\"index.php?sec=detalle_diario&a=".$ano."&m=".$mes."\">".$mes."</a></td>";
}
echo "</table>";
?>