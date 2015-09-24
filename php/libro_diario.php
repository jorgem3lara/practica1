<?php 
include('conexion.php');
echo "<br><b><a href=\"index.php?sec=registro_diario\">+Agregar Nueva partida</a></b>";
echo "<br><b><a href=\"index.php?sec=borrarp\">+Eliminar una partida</a></b>";
$query="select id_movimiento,dia,mes,ano,partida,descripcion from libro_diario order by mes and ano";
$result=mysql_query($query) or die(mysql_error());
echo "<table border=1>
<tr>
<th>Dia</th>
<th>Mes</th>
<th>Año</th>
<th>Partida</th>
<th>Descripcion</th>
</tr>";
while($r=mysql_fetch_assoc($result)) {
	echo"<tr>
	<td><a href=\"index.php?sec=detalle_diario&m=".$r['id_movimiento']."\">".$r['dia']."</td></a>
	<td><a href=\"index.php?sec=detalle_diario&m=".$r['id_movimiento']."\">".$r['mes']."</td></a>
	<td><a href=\"index.php?sec=detalle_diario&m=".$r['id_movimiento']."\">".$r['ano']."</td></a>
	<td><a href=\"index.php?sec=detalle_diario&m=".$r['id_movimiento']."\">".$r['partida']."</td></a>
	<td><a href=\"index.php?sec=detalle_diario&m=".$r['id_movimiento']."\">".$r['descripcion']."</td></a>
	</tr>";
	}
echo "</table>";
?>