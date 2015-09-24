<?php
include('conexion.php');
$cuenta=$_POST['codigo_mayor'];
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
   setTimeout(\"location.href='../index.php?sec=registro_cuenta'\",2000);
</script>";
	}
else{
	$query=" DELETE FROM cuenta WHERE codigo_mayor='".$cuenta."' ";
	mysql_query($query) or die(mysql_error());
	
	echo "Registro eliminado con exito 
<script type=\"text/javascript\" >
   setTimeout(\"location.href='../index.php?sec=catalogo'\",1);
</script>";
}
?>