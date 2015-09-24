<?php
include("conexion.php");

echo '

<form name="hola" method="POST" action="">

Codigo de la cuenta a eliminar
<input type="text" name="n">
<br>

<input type="submit" name="del" value="Eliminar">


</form>
';

if(isset($_POST['del']) == "Eliminar"){
$nu = $_POST['n'];

$sql = mysql_query(" DELETE FROM cuenta WHERE codigo_mayor='$nu' ");



if($sql){
echo '<script>alert("Cuenta eliminada")</script>';
}

}
?>