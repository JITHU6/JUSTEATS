<?php 
$con=@mysql_connect("localhost","root","") or die("conection not enabled");
@mysql_select_db("justeats",$con) or die ("unable to connect to dab");

?>