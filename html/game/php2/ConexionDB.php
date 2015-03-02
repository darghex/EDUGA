<?php

define('USER', 'root');
define('PASSWD', 'maku1190');
define('SERVER', 'localhost');
define('DB', 'tesoro');

class ConexionDB
{
	private $link = null;

	//Constructor de la clase
	public function __construct()
	{
		if (is_null($this->link))
		{
			$this->link = mysql_connect(SERVER, USER, PASSWD);
			if ($this->link)
			{
				mysql_select_db(DB);
			} else {
				die("Error conectando a la base de datos : " . mysql_error());
			}
		}
	}

	public function getPreguntas()
	{
		
		$sql = "SELECT COUNT(id) as tamanio from preguntas";
		$result = mysql_query($sql, $this->link);
		$result = mysql_fetch_object($result);
		$pos = rand(0, $result->tamanio -1);
		
		$sql = "SELECT * FROM preguntas LIMIT $pos, 1";
		
		$result = mysql_query($sql, $this->link);
		
		$pre = mysql_fetch_object($result);
		// reordenar aleatoriamente las opciones de respuesta
		$opciones = $this->rotar( array("r1","r2", "r3","r4") );

		$response = array('id' => $pre->id, 'pregunta' => $pre->pregunta, 
			$opciones[0] => array('label' => 'A', 'detalle' => $pre->r1), 
			$opciones[1] => array('label' => 'B', 'detalle' => $pre->r2), 
			$opciones[2] => array('label' => 'C', 'detalle' => $pre->r3), 
			$opciones[3] => array('label' => 'D', 'detalle' => $pre->r4),
			'rc' => $pre->rc );
		
		return json_encode($response);
	}


	public function verificar($preg, $rpta)
	{
		$sql = "SELECT rc FROM preguntas WHERE id = $preg";
		$result = mysql_query($sql, $this->link);
		
		$pre = mysql_fetch_object($result);
		return json_encode(array('rc' =>  $pre->rc ));
	}





	private function rotar($array){
		
		$new_array = array();
		foreach ( $array as $item){
			$max = count($array);
			$pos = rand(1, $max) - 1;
			$elemento = current( array_splice( $array, $pos, 1) ) ;
			array_push($new_array, $elemento );

		}
		return $new_array; 
	}
}

$ConexionDB = new ConexionDB();

?>