<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml 1-Transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml" />
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta http-equiv="pragma" content="nocache" />        
        <link rel="shortcut icon" href="imagenes/Icono.ico" />
		<link href="css/stylo.css" rel="stylesheet" type="text/css" />        
		<title>.: Hayward :.</title>
		<script language="javascript" type="text/javascript" src="js/funciones.js">
		</script>    
	</head>
   
	<body onLoad="Maximiza()" background="fondo.PNG"> 
 		<div id="encabezado">   	
        				<p>
                    	<img  align="left" src="Imagenes/logo.png" />
                        <div  align="right" id="subdiv"><p align="right">Hayward M&eacute;xico</p></div>
                        </p>
        </div>
        
        <div id="panel">
			<?php
                include("seestore.php");
                echo $display_block;
            ?>        
        </div>
        
        <div id="descripcion">
			<?php 
                include("showitem.php");
				echo "<html>
<head>
<title>H</title>
<style type=\"text/css\">
a:link{ color: #000; text-decoration: underline}
a:active{ color: #000; text-decoration: none}
a:visited{ color: #000; text-decoration: none}
a:hover{ color: #DF0101; text-decoration: underline;}
</style>
</head>
<body>";
                echo $display_block; 
            ?>
        </div>

        <div id="creditos"><font size=1 color="#FFFFFF">
        	Hecho en M&eacute;xico, todos los derechos reservados 2011.<br /> Esta p�gina puede ser reproducida con fines no lucrativos, siempre y cuando no se mutile, se cite la fuente completa y su direcci�n electr�nica. De otra forma, requiere permiso.<br />
Sitio web administrado por: <br  />
Hern�ndez Hern�ndez No� | Per�z Gonz�lez Marco Antonio | Reyes Mercado Ivette | Salgado Mendoza Jorge | S�nchez Lerma Rodrigo</font>
        </div>
        
        <div id="final">  
        </div>
       
	</body>
</html>