<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<!--Tiene que configurar la direccion url que aparece aqui con la url de su sitio-->
<?php /* ?>
<meta HTTP-EQUIV="REFRESH" content="25; url=http://tiendastore.net/demopago/payu/index.php">
<?php */ ?>
<?php
if(strlen($_GET['ref_venta'])>0)
{
	$salereference=$_GET['ref_venta'] ;
	$gatewayreference=$_GET['ref_pol'];
	$transactioncode=$_GET['estado_pol'];
	$msg=$_GET['mensaje'];
	$value=$_GET['valor'];
}
else
{
	$salereference=$_GET['referenceCode'] ;
	$gatewayreference=$_GET['reference_pol'];
	$transactioncode=$_GET['transactionState'];
	$msg=$_GET['message'];
	$value=$_GET['TX_VALUE'];
}


if($_GET['lng']=="es")
{
	$pagetitle="Confirmación del pago";
	$title="Su pago est&aacute; siendo confirmado para procesar su orden...";
	$datelabel="Fecha";
	$salereferencelabel="N&ordm; de Recibo";
	$gatewayreferencelabel="codigo pol";
	$transactionstatelabel="Estado de la Transaccion";
	$paymentmethodlabel="Forma de Pago";
	$typepaymentlabel="Medio de pago";
	$msglabel="Mensaje";
	$valuelabel="Valor";
	$lastmsg="Gracias por comprar con nosotros!";
	$redirectmsg="redirectmsg En unos momentos será redireccionado a la p&aacute;gina
	principal";
}
else
{
	$pagetitle="Payment Confirmation";
	$title="Your payment is currently being confirmed to process your order...";
	$datelabel="Date";
	$salereferencelabel="Receipt N&ordm;";
	$gatewayreferencelabel="LAP Code";
	$transactionstatelabel="Transaction State";
	$paymentmethodlabel="Payment Type";
	$typepaymentlabel="Payment Method";
	$msglabel="message";
	$valuelabel="Total";
	$lastmsg="Thanks for your purchase!";
	$redirectmsg="In a moment you will be redirected to the homepage";
}
?>
<title><? echo $pagetitle ?></title>
<style type="text/css">
	<!--
	.Estilo1 {color: #FFFFFF}
	.Estilo2 {
		font-family: Verdana, Arial, Helvetica, sans-serif;
		font-size: 10px;
		color: #FFFFFF;
	}
-->
</style>
</head>
<body>
	<div align="center">
		<table width="500" border="0" cellspacing="0" cellpadding="0">
			<tr bgcolor="#0099FF">
				<th width="100%" scope="col"><h1 class="Estilo1"><? echo $pagetitle ?></h1><br />
					<tr bordercolor="#000000">

						<tr scope="col"><span class="Estilo5">
							<td><? echo $datelabel ?>: <?php echo(date("Y-m-d",strtotime("now"))); ?></td>
						</span></tr>
						<tr scope="col"><span class="Estilo5">
							<td><? echo $salereferencelabel ?> : <? echo $salereference ?></td>
						</span></tr>
						<tr scope="col"><span class="Estilo5">
							<td><? echo $gatewayreferencelabel ?> : <? echo $gatewayreference ?></td>
						</span></tr>
						<tr scope="col"><span class="Estilo5">
							<td><? echo $transactionstatelabel ?>: <?
								switch($_GET['estado_pol'])
								{
									case 1: echo "Sin abrir";
									break;
									case 2: echo "Abierta";
									break;
									case 3: echo "Pagada";
									break;
									case 4: echo "Pagada y Abonada";
									break;
									case 5: echo "Cancelada";
									break;
									case 6: echo "Rechazada";
									break;
									case 7: echo "En validacion";
									break;
									case 8: echo "Reversada";
									break;
									case 9: echo "Reversada Fraudulenta";
									break;
									case 10: echo "Enviada Ent. Financiera";
									break;
									case 11: echo "Capturando datos tarjeta de credito";
									break;
									case 12: echo "Esperando confirmacion sistema PSE";
									break;
								}
								switch($_GET['transactionState'])
								{
									case 2: echo "NEW";
									break;
									case 4: echo "APPROVED";
									break;
									case 5: echo "EXPIRED";
									break;
									case 6: echo "DECLINED";
									break;
									case 7: echo "PENDING";


									break;
								}
								?></td>
							</span></tr>
							<tr scope="col"><span class="Estilo5">
								<td><? echo $paymentmethodlabel; ?>:
									<?
									switch($_GET['tipo_medio_pago'])
									{
										case 2: echo " Tarjeta de crédito";
										break;
										case 3: echo " Tarjeta de crédito Verified by VISA";
										break;
										case 4: echo " Cuentas corrientes y de ahorros PSE";
										break;
										case 7: echo " Pago En Efectivo";
										break;
										case 8: echo " Pago En Efectivo";
										break;
									}


									switch($_GET['polPaymentMethodType'])
									{
										case 2: echo " Credit Card";
										break;
										case 3: echo " Credit Card Verified by VISA";
										break;
										case 4: echo " PSE savings accounts";
										break;
										case 7: echo " Cash Payment";
										break;
										case 8: echo " Cash Payment";
										break;
									}
									?> </td>
								</span></tr>
								<tr><!-- Es el medio de pago utilizado en el pago -->
									<td><span class="Estilo5"><? echo $typepaymentlabel; ?>:
										<?php
										switch($_GET['medio_pago'])
										{
											case 250: echo "Visa";break;
											case 251: echo "MasterCard";break;
											case 252: echo "American Express";break;
											case 253: echo "Diners";break;
											case 254: echo "PSE (Proveedor de Servicios Electr&oacute;nicos)";break;
											case 255: echo "Baloto";break;
											case 131: echo "Oxxo";break;
//Pagos en Panama
											case 221: echo "American Express";break;
											case 222: echo "MasterCard";break;



											case 220: echo "Visa";break;
//Pagos en Peru
											case 100:echo "VíaBCP";break;
										}
										switch($_GET['polPaymentMethod'])
										{
											case 250: echo "Visa";break;
											case 251: echo "MasterCard";break;
											case 252: echo "American Express";break;
											case 253: echo "Diners";break;
											case 254: echo "PSE ";break;
											case 255: echo "Baloto";break;
											case 131: echo "Oxxo";break;
//Pagos en Panama
											case 221: echo "American Express";break;
											case 222: echo "MasterCard";break;
											case 220: echo "Visa";break;
//Pagos en Peru
											case 100:echo "VíaBCP";break;
										}
										?></span>
									</td>
								</tr>
								<tr scope="col"><span class="Estilo5">
									<td><? echo $msglabel; ?>: <? echo $msg; ?></td>
								</span></tr>
								<tr scope="col"><span class="Estilo5">
									<td><? echo $valuelabel; ?>: <? echo $value; ?></td>
								</span></tr>
							</tr><td bgcolor="#0099FF"><br />
							<h1 align="center" class="Estilo1"><? echo $lastmsg; ?></h1>
							<div align="center"><br />
								<span class="Estilo2"><? echo $redirectmsg; ?></span></div></td>
							</tr>
						</table>
					</div>
				</body>
				</html>