<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Confirmación del pago</title>
<style type="text/css">
#cont-container {
background-image: url("http://www.pagosonline.com/desarrolladores/ejemplos/fullpack/cod/imagenes/bg-container.png");
background-repeat: repeat-y;
margin-left: auto;
margin-right: auto;
position: relative;
width: 994px;
}

#cont-container #container #cont-contenido {
background-image: url(http://www.pagosonline.com/desarrolladores/ejemplos/fullpack/cod/imagenes/bg-contenido.jpg);
background-repeat: no-repeat;
background-position: center top;
background-color: #FFF;
padding-top: 38px;
width: 952px;
margin-right: auto;
margin-left: auto;
padding-right: 14px;
padding-left: 14px;
}

#bg-buttom {
background-image: url(http://www.pagosonline.com/desarrolladores/ejemplos/fullpack/cod/imagenes/bg-buttom.png);
background-repeat: no-repeat;
display: block;
height: 39px;
width: 994px;
margin-right: auto;
margin-left: auto;
}

body {
background-color: #4A36AF;
background-repeat: repeat;
font-family: Arial;
font-size: 11px;
color: #747474;
}

h1 {
font-size:26px;
font-weight:bold;
color:#000;
}
h2 {
font-size:16px;
font-weight:bold;
}
h4{
font-size:15px;
font-weight:bold;
color:#4A36AF;
font-family: Arial;
}

#bg-top {
background-image: url(http://www.pagosonline.com/desarrolladores/ejemplos/fullpack/cod/imagenes/bg-top.png);
background-repeat: no-repeat;
display: block;
height: 28px;
width: 994px;
margin-right: auto;
margin-left: auto;
}

</style>
</head>
<body>
<div id="bg-top" ></div>
<div id="cont-container">
<div id="container">
<div id="cont-contenido">
<div align="center">

<?php
################################DATOS PRUEBA ################################################


$url_confirmacion = "http://tiendastore.net/demopago/payu/confirmacion.php";
$url_respuesta = "http://tiendastore.net/demopago/payu/respuesta.php";
$lng="es";


$correo_comprador="ingenieria@mipagina.net";
$usuarioId="1";
$descripcion = "Producto";
$iva=0;
$basevalor=0;
$llave_encripcion='012345678901';
#$merchantId = "500238";

$refVenta = time();
$valor=116000;
$moneda ="COP";


$firma= "$llave_encripcion~$usuarioId~$refVenta~$valor~$moneda";
$firma_codificada = md5($firma);
$prueba ="1";


if ($prueba==1)  { $url_gateway="https://stg.gateway.payulatam.com/ppp-web-gateway"; } 
else  { $url_gateway="https://gateway.payulatam.com/ppp-web-gateway"; }




#=======================DATOS DE PAGO DE PRUEBA =========================
#Numero de tarjeta: 4111111111111111
#Codigo seguridad:  123
#Fecha expiracion:  01/2017
#=======================DATOS DE PAGO DE PRUEBA =========================



################################DATOS PRUEBA ################################################
?>

  <table width="500" border="0">
    <tr>
      <td colspan="2"><h1 align="center">Ejemplo pagos en linea</h1></td>
      </tr>
      <tr>
      <td colspan="2"><br/><br/></td>
      </tr>
    <tr>
      <td rowspan="3" width="250" align="center"><img src="http://www.pagosonline.com/desarrolladores/estilos/imagenes/tradicional.png" width="143" height="131" alt="Producto" /></td>
      <td width="250"><h2 >En este campo debes colocar la descripción del producto que deseas que vea el cliente.</h2></td>
    </tr>
    <tr>
      <td width="250"><h1 >Valor: $ <?php echo number_format($valor); ?></h1></td>
    </tr>
<tr><td width="250" >



<form method="post" action="<?php echo $url_gateway; ?>" target="_self">

<input type="hidden" name="prueba" value="<?php echo $prueba; ?>">
<input type="hidden" name="usuarioId" value="<?php echo $usuarioId ?>">
<input type="hidden" name="refVenta" value="<?php echo $refVenta ?>">
<input type="hidden" name="valor" value="<?php echo $valor ?>">
<input type="hidden" name="iva" value="<?php echo $iva ?>">
<input type="hidden" name="baseDevolucionIva" value="<?php echo $basevalor?>">
<input type="hidden" name="moneda" value="<?php echo $moneda ?>">
<input type="hidden" name="url_confirmacion" value="<?php echo $url_confirmacion ?>">
<input type="hidden" name="url_respuesta" value="<?php echo $url_respuesta?>">
<input type="hidden" name="emailComprador" value="<?=$correo_comprador?>">
<input type="hidden" name="firma" value="<?php echo $firma_codificada ?>">
<input type="hidden" name="lng" value="<?php echo $lng ?>">
<input type="hidden" name="descripcion" value="<?php echo $descripcion; ?>">

<input name="extra1" type="hidden" value="<?php echo $description ?>" >
<input name="extra2" type="hidden" value="<?php echo $description ?>" >
<input name="extra3" type="hidden" value="<?php echo $description ?>" >
<input name="Submit" type="submit" value="Enviar Datos para realizar su pago"/>

</form>


</td>
</tr>

<tr>
      <td colspan="2"><br/><br/></td>
      </tr>
    <tr>
      <td colspan="2"><a href="http://www.pagosonline.com/" target="_blank"><img src="https://gateway.payulatam.com/ppp-web-gateway/images/home_pagos_cliente2_fondo_logo_sin_latam.gif" alt="j" width="460" height="60" border="0" /></a></td>
      </tr>
    <tr>
      <td colspan="2"><h4 align="center"><br />
<span class="Estilo2"><a href="http://www.pagosonline.com" >Ver otros productos</a></span> </h4></td>
      </tr>
  </table>
</div></div></div></div>
<div id="bg-buttom"></div>
</body>
</html>