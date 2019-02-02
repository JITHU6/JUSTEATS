<?php
session_start();
include 'dbconnect.php';

echo $u_id=$_POST['Username'];
echo $u_pass=$_POST['Password'];
$sql=mysql_query("SELECT tbl_login.email,tbl_login.password,tbl_login.user_id,tbl_login.type,tbl_login.status,tbl_registration.name
FROM tbl_login 
INNER JOIN tbl_registration
ON tbl_login.user_id= tbl_registration.user_id WHERE `email`='$u_id' AND `password`='$u_pass' ",$con);
if(mysql_num_rows($sql)>0){
	while($row=mysql_fetch_array($sql))
	{
		$dbu_type=$row['type'];
		if($dbu_type==1)
		{
			$_SESSION['type']="ADMIN";
			$_SESSION['name']=$row['name'];
			$_SESSION['u_id']=$row['email'];
			$_SESSION['u_status']=$row['status'];
			
			header("location: admin_index.php");
		}
		else if($dbu_type==2 && $dbu_status==1)
		{
			$_SESSION['type']=$dbu_name;
			$_SESSION['u_id']=$dbu_userid;
			$_SESSION['u_status']=$dbu_status;
		
	
			// header("location: user_index.php");
		}
		else
		{
	$_SESSION['error']="wrong password";
			header("location: login.php");
		}
		
	}
}
else
{
	$_SESSION['error']="wrong password";
	header("location: login.php");
	//echo"not found";
}
						/*if(isset($_GET['error']))
						{
							$error=$_GET['error'];
							echo  "<font color=red size=5>".$error;
						}*/
				

?>



