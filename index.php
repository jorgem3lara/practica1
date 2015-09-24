<?php
/****************************************************************************
* CURSO DE PHP - NIVEL BASICO - CLASE 6
* http://www.elreplicante.com.ar/
* FECHA: 15/08/2012
* AUTOR: ALEJANDRO DE LUCA
* eMAIL: contacto@elreplicante.com.ar
* DESCRIPCION: PHP y HTML
*
*****************************************************************************/

if (!isset($_GET['sec']))
    $seccion = null;
else
    $seccion = $_GET['sec'];    

?>
<!DOCTYPE html>
<html>
<head>
<title>SCUS</title>
<link rel="stylesheet" type="text/css" href="css/principal.css">
<?php if ($seccion=="contacto") : ?>
    <link rel="stylesheet" type="text/css" href="css/contacto.css">    
 <?php endif; ?>
 <?php if ($seccion=="servicios") : ?>
    <link rel="stylesheet" type="text/css" href="css/servicios.css">    
 <?php endif; ?>
</head>
<body>
<div id="wrapper">
    <div id="header"><?php require_once("header.php") ?></div>
    <div id="sidebar"><?php require_once("sidebar.php") ?></div>
    <div id="principal">
        <?php if ($seccion=="catalogo")
                require_once("php/catalogo.php");
                
               elseif ($seccion=="libro_diario")
                require_once("php/libro_diario.php");
				
				elseif ($seccion=="balance_comprobacion")
                require_once("php/balance_comprobacion.php");
				
				elseif ($seccion=="estado_resultados")
                require_once("php/estado_resultados.php");
				
				elseif ($seccion=="registro_cuenta")
                require_once("php/registro_cuenta.php");
				
				elseif ($seccion=="registrar_cuenta")
                require_once("php/registrar_cuenta.php");
				
				elseif ($seccion=="registro_diario")
                require_once("php/registro_diario.php");
				
				elseif ($seccion=="registrar_diario")
                require_once("php/registrar_diario.php");
				
				elseif ($seccion=="detalle_diario")
                require_once("php/detalle_diario.php");
				
				elseif ($seccion=="elimino_cuenta")
                require_once("php/elimino_cuenta.php");
				
				elseif ($seccion=="borrarc")
                require_once("php/borrarc.php");
				
				elseif ($seccion=="borrarp")
                require_once("php/borrarp.php");
               else {
        ?>
        <center><h2>¡Bienvenidos!</h2>
        <p>Nuestro sistema contable es el mejor del mercado</p>
        <p>A través de esta web ud. podrá llevar la contabilidad de su empresa de una manera mas eficiente y automatizada</p><center/>
        <?php
        }        
        ?>
    </div>
    <div id="footer">
        <?php require_once("footer.php") ?>
    </div>
</div>
</body>
</html>