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
		$sql = "SELECT * FROM preguntas";
		$response = array();
		$result = mysql_query($sql, $this->link);
		
		while ($pre = mysql_fetch_object($result))
		{
			$response[] = array('id' => $pre->id, 'pregunta' => $pre->pregunta, 'r1' => $pre->r1, 'r2' => $pre->r2, 'r3' => $pre->r3, 'r4' => $pre->r4,'rc' => $pre->rc);
		}
		
		return json_encode($response);
	}
}

$ConexionDB = new ConexionDB();

?>
