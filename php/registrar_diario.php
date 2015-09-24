<?php
include('conexion.php');
$registros=$_POST['n'];
$cuentas=$_POST['cuenta'];
$deber=$_POST['deber'];
$haber=$_POST['haber'];
$dia=$_POST['dia'];
$mes=$_POST['mes'];
$ano=$_POST['ano'];
$partida=$_POST['partida'];
$descripcion=$_POST['descripcion'];
$query="insert into libro_diario(dia,mes,ano,partida,descripcion) values(".$dia.",".$mes.",".$ano.",".$partida.",'".$descripcion."')";
$q2="select id_movimiento from libro_diario where dia=".$dia." and mes=".$mes." and ano=".$ano." and partida=".$partida;
if(mysql_num_rows(mysql_query($q2))!=0){
	echo "<script type=\"text/javascript\" >
alert('El numero de partida ".$partida." del dia ".$dia."/".$mes."/".$ano." ya existe en el registro');
setTimeout(\"location.href='../index.php?sec=registro_diario'\",1);
</script>";
	}
	else{
$query="insert into libro_diario(dia,mes,ano,partida,descripcion) values(".$dia.",".$mes.",".$ano.",".$partida.",'".$descripcion."')";
mysql_query($query) or die(mysql_error());
$movimiento=mysql_result(mysql_query($q2) ,0);
for($i=0;$i<$registros;$i++){
	$q="insert into detalle_libro_diario(id_movimiento,cuenta,deber,haber) values(".$movimiento.",".$cuentas[$i].",".$deber[$i].",".$haber[$i].")";
	mysql_query($q) or die(mysql_error());
	}
	echo "<script type=\"text/javascript\" >
setTimeout(\"location.href='../index.php?sec=registro_diario'\",1);
</script>";
}
?>
