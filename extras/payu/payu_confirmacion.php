<?php
$llave=" ";/////Debe ingresar su Api KEY
$usuario_id = $_REQUEST['usuario_id'];
fecha = date("d.m.Y-H:i:s");
$refVenta = $_REQUEST['ref_venta'];
$refPol = $_REQUEST['ref_pol'];
$estadoPol = $_REQUEST['estado_pol'];
$formaPago = $_REQUEST['tipo_medio_pago'];
$banco = $_REQUEST['medio_pago'];
$moneda=$_REQUEST['moneda'];
$codigo = $_REQUEST['codigo_respuesta_pol'];
$mensaje = $_REQUEST['mensaje'];
$valor = $_REQUEST['valor'];
$firma_cadena=$llave."~".$usuario_id."~".$refVenta."~".$valor."~".$moneda."~".$estadoPol;
$firmacreada = md5($firma_cadena);
$firma=$_REQUEST['firma'];//firma

if(strtoupper($firma)==strtoupper($firmacreada)){//comparacion de las firmas para comprobar que los datos si vienen de Pagosonline



/*

//Escriba su Host, por lo general es 'localhost'
$host = ' ';
//Escriba el nombre de usuario de la base de datos
$login = ' ';
//Escriba la contraseña del usuario de la base de datos
$password = ' ';
//Escriba el nombre de la base de datos a utilizar
$basedatos = ' ';
//conexion a mysql
$conexion = mysql_connect($host, $login, $password);

if(!$conexion){
$mensajeLog .= "[".date("Y-m-d H:i:s")."] Error al conectar la base de datos -
".mysql_error()."\n";
}
if(!mysql_select_db($basedatos, $conexion)){
$mensajeLog .= "[".date("Y-m-d H:i:s")."] Error al seleccionar la base de datos -
".mysql_error()."\n";
}
// consulta a la bd
$sql = "REPLACE INTO pedidos_confir VALUES ('".$fecha."', '".$refVenta."',
'".$refPol."', '".$estadoPol."', '".$formaPago."', '".$banco."', '".$codigo."', '".$mensaje."',
'".$valor."')";
// select para actualizar la bd pedidos_confir y jos_vm_orders


#Pendiente= P
#Cancelado = C
#Rechazado  = R
#Aprobado  = A
#Enviado  = E

switch($estadoPol)
{
case 4: 
#Aprobado 
$result_a = mysql_query("UPDATE jos_vm_orders SET order_status ='A' WHERE order_id=".$refVenta ,$conexion);
break;

case 5: 
#Cancelado
$result_c = mysql_query("UPDATE jos_vm_orders SET order_status ='C' WHERE order_id=".$refVenta ,$conexion);
break;

case 6: 
#Rechazado 
$result_r = mysql_query("UPDATE jos_vm_orders SET order_status ='R' WHERE order_id=".$refVenta ,$conexion);
break;

case 12:
#Pendiente
$result_p = mysql_query("UPDATE jos_vm_orders SET order_status ='P' WHERE order_id=".$refVenta ,$conexion);
break;

}
$result = mysql_query($sql);
if (!$result) {
$mensajeLog .= "[".date("Y-m-d H:i:s")."] Error al ejecutar el query (".$sql.") la
base de datos - ".mysql_error()."\n";
}


if(strlen($mensajeLog)>0){
$filename = $_SERVER["DOCUMENT_ROOT"]."/confirmacion.txt";
$fp = fopen($filename, "a");
if($fp) { fwrite($fp, $mensajeLog, strlen($mensajeLog));
fclose($fp);
}
}

*/

}
else{
echo "<br />Error en los datos recibidos";
}
?>Datos para realizar su pago">
</form>