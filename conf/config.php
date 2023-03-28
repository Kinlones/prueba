<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "diagnostico";
try
{
	$spojeni=mysql_connect($servername,$username,$password) or die ('Error de conexión');
	mysql_select_db($db,$spojeni);
}
catch(Exception $e)
{
	echo "Error de conecion de DB",$e->getMessage();
}
?>