<?php

include 'ConexionDB.php';
echo $ConexionDB->verificar($_GET['preg'], $_GET['rpta']);