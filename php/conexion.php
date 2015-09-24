<?php
#Archivo que conecta con la base de datos 

if(!@$conexion=mysql_connect("localhost","root","usbw")){
die("Error Al Tratar De Conectar con el Servidor");
}

if(!@mysql_select_db("conta",$conexion)){
die ("Error Al Tratar De Conectar Con la Base De Datos");
}

?>
