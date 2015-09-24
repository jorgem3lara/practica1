<?php
include('conexion.php');
$cuenta=$_POST['codigo_mayor'];
$nombre=$_POST['nombre_cuenta'];
$descripcion=$_POST['descripcion_cuenta'];
$tipo=$_POST['tipo_cuenta'];
$er=$_POST['er'];
if($er=="on"){
$er=1;	
	}
	else {
	$er=0;	
	}
$q="select codigo_mayor from cuenta where codigo_mayor=".$cuenta;if(mysql_num_rows(mysql_query($q))!=0){
	
echo "El numero de cuenta  ya existe 
<script type=\"text/javascript\" >
   setTimeout(\"location.href='index.php?sec=registro_cuenta'\",2000);
</script>";
	}
else{
	$query="insert into cuenta(tipo_cuenta,codigo_mayor,nombre_cuenta,descripcion,er) values(".$tipo.",".$cuenta.",'".$nombre."','".$descripcion."',".$er.")";
	mysql_query($query) or die(mysql_error());
	
	echo "Registro realizado con exito 
<script type=\"text/javascript\" >
   setTimeout(\"location.href='index.php?sec=registro_cuenta'\",1);
</script>";
}
?>