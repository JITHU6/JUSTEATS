<?php
include 'config.php';
echo $basename= basename($_SERVER['REQUEST_URI']);
echo "<br>".VIEW_PATH.$basename;
echo "<br>".CLASS_PATH.$basename;
if(SITE_NAME==$basename)
include VIEW_PATH.'index.php';	
else
include VIEW_PATH.$basename.'';	
include CLASS_PATH.$basename.'';	

?>