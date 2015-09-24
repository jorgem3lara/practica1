<?php
include('conexion.php');
function imprime_celdas(){
		echo "<td><select name=\"cuenta[]\" >";
		$cuentas=mysql_query("select codigo_mayor,nombre_cuenta,tipo_cuenta from cuenta") or die(mysql_error());
		while($res=mysql_fetch_assoc($cuentas)) {
		echo "<option value=".$res['codigo_mayor'].">".$res['nombre_cuenta']."</option>";		
		};
		echo"</select></td><td><input type=\"text\" name=\"deber[]\" size=\"10\" value=0></td><td><input type=\"text\" name=\"haber[]\" size=\"10\" value=0></td><tr>";
	}
?>
<form name="libro_diario" method="post" action="php/registrar_diario.php">
<table>
<tr>
<td>Partida N°: <input name="partida" type="text" value="" size="3"></td>
</tr>
<tr>
<td>Dia:<select name="dia"><?php for($i=1;$i<32;$i++){echo "<option value=".$i.">".$i."</option>";}?></select> Mes:<select name="mes"><?php for($i=1;$i<13;$i++){echo "<option value=".$i.">".$i."</option>";}?></select> Año:<select name="ano"><?php for($i=1970;$i<2020;$i++){echo "<option value=".$i.">".$i."</option>";}?></select></td>
</tr>
</table>
<table border="1">
<tr>
<th>Cuenta</th>
<th>Deber</th>
<th>Haber</th>
</tr>
<?php
if(isset($_GET['u'])){
$u=$_GET['u'];	
	}
else {
	$u=2;
	}
for($i=0;$i<$u;$i++){
	imprime_celdas();
}

echo "<tr><td><b><a href=\"index.php?sec=registro_diario&u=".($u+1)."\">+Añadir otro campo</a></b></td> <td><b><a href=\"index.php?sec=registro_diario&u=".($u-1)."\">-Eliminar Ultimo campo</a></b></td></tr>";
?>


</table>
Descripción:<br> 
<textarea name="descripcion" rows="5" cols="70"></textarea><br>
<input type="hidden" value="<?php echo $u; ?>" name="n">
<input type="submit" value="Registrar">                    <input type="reset" value="Limpiar Formulario">
</form>
