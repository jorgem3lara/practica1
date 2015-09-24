<?php
include('conexion.php');
$tipos=mysql_query("select id_tipo_cuenta,nombre_tipo_cuenta from tipo_cuenta") or die(mysql_error());
?>
<form name="elimino_cuentas" action="index.php?sec=eliminar_cuenta" method="post">
<table border="1" >
<tr>
<th>Código de Mayor </th>
</tr>
<tr>
<td><input type="text" size="10" name="codigo_mayor"></td>
</tr>
</table>
<input type="submit" value="Eliminar">
</form>
