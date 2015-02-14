<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*!
* HybridAuth
* http://hybridauth.sourceforge.net | http://github.com/hybridauth/hybridauth
* (c) 2009-2012, HybridAuth authors | http://hybridauth.sourceforge.net/licenses.html
*/

// ----------------------------------------------------------------------------------------
//	HybridAuth Config file: http://hybridauth.sourceforge.net/userguide/Configuration.html
// ----------------------------------------------------------------------------------------


$pos = strpos(base_url(), "virtualab.sem");

## si es version produccion
if ($pos === false) {
  
$config =
	array(
		'base_url' => '/hauth/endpoint',
		"providers" => array (
			"Facebook" => array (
				"enabled" => true,
				"keys"    => array ( "id" => "1592850577612451", "secret" => "6004a9f98490fcc16fdff777c39fcc87" ),
			),
		),
		"debug_mode" => (ENVIRONMENT == 'production'),
		"debug_file" => APPPATH.'/logs/hybridauth.log',
	);




} else {
 ## si es version local
$config =
	array(
		'base_url' => '/hauth/endpoint',
		"providers" => array (
			"Facebook" => array (
				"enabled" => true,
				"keys"    => array ( "id" => "708560965890572", "secret" => "abde714d7432f31f39d2afa6ca45f48e" ),
			),
		),
		"debug_mode" => (ENVIRONMENT == 'production'),
		"debug_file" => APPPATH.'/logs/hybridauth.log',
	);



}












/* End of file hybridauthlib.php */
/* Location: ./application/config/hybridauthlib.php */