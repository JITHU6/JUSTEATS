<?php
include 'dbconnect.php';


	echo  $u_type=$_POST['type'];
	echo  $u_name =$_POST['Name'];
	$u_phone=$_POST['Phone'];
	$u_email=$_POST['Email'];
	$u_address1 =$_POST['Address1'];
	$u_address2=$_POST['Address2'];
	$u_city =$_POST['City'];
	$u_district=$_POST['District'];
	$u_pincode=$_POST['Pincode'];
	$u_pancard=$_POST['Pancard'];
	$u_password=$_POST['Password'];
	$u_cpassword=$_POST['CPassword'];
	echo $u_name;
	
	$resad=mysql_query("select email from tbl_login where email='".$u_email."'",$con);
		if(mysql_num_rows($resad)>1){
		 echo "user already exist";
		  /*?>header("location:".SITE_URL."view/login.php?error=user exists");<?php */
		}
		
	 else
	 {
	 if($u_password == $u_cpassword)
		{
			$sql_district=mysql_query("insert into tbl_district(district_name,status) values ('".$u_district."','1')",$con);
			$sql_dselect=mysql_query("select district_id from tbl_district where district_name='".$u_district."'",$con);
		
			while($row=mysql_fetch_array($sql_dselect))
				{	
					$id=$row['district_id'];
	
				}
			$sql_address=mysql_query("insert into tbl_address(address1,address2,city,district_id,pincode,pancard,status)values('".$u_address1."','".$u_address2."','".$u_city."','".$id."','".$u_pincode."','".$u_pancard."','1')",$con);
		$lastb=mysql_insert_id();
			
			$sql_aselect=mysql_query("select address_id from tbl_address where address_id='".$lastb."'",$con);
		
	
			while($row=mysql_fetch_array($sql_aselect))
				{
					$id=$row['address_id'];
				
			   }
			   $resr=mysql_query("INSERT into tbl_registration(name,rphone,address_id,status)values('".$u_name."','".$u_phone."','".$id."','1')",$con) or die(mysql_error());
			   $lastc=mysql_insert_id();
		
			$sql_rselect=mysql_query("select user_id from tbl_registration where user_id='".$lastc."'",$con);
			
		
			while($row=mysql_fetch_array($sql_rselect))
				{
				
				$id=$row['user_id'];
			
				}
				$sql_login=mysql_query("insert into tbl_login(email,password,user_id,type,status)values('".$u_email."','".$u_password."','".$id."','".$u_type."',1)",$con);
			echo "hloooooooo";
			header("location: login.php");
			
		 /*?>$sql_address="insert into tbl_address(address1,address2,city,district_id,pincode) values ('$u_address1','$u_address2','$u_city','$u_address2','$u_pincode')";
		$sql="insert into tbl_login(login_id,email,password,employee_id,u_pass,u_cpass,u_status,block) values 				          ('$u_id','$u_mobilenumber','$u_name','$photo','$u_pass','$u_cpass','$u_status','$block')";
	$res=mysql_query($sql,$con);
	if($res)
	{
		move_uploaded_file($_FILES['image']['tmp_name'],"images/".$photo);
	header("location:index.php");
	}
	else{
	echo header("location:signup.php?error=password mismatchaaaa");
	}<?php */
	}
	else
	{
		
		
	 header("location:  login.php?error=password mismatchbbb");
	}	
	 }
?>