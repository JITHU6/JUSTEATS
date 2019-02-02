<?php

 /*?> function SignUp($con)
{


	$u_type=$_POST['type'];
	$u_name =$_POST['Name'];
	$u_phone =$_POST['Phone'];
	$u_email =$_POST['Email'];
	$u_address1 =$_POST['Address1'];
	$u_address2=$_POST['Address2'];
	$u_city =$_POST['City'];
	$u_district=$_POST['District'];
	$u_pincode=$_POST['Pincode'];
	$u_pancard=$_POST['Pancard'];
	$u_password=$_POST['Password'];
	$u_cpassword=$_POST['CPassword'];
	echo $u_name;

		
		
		$resad=mysql_query("select * from tbl_login where email='".$u_email."'",$con);
		if($resad){
		 echo "user already exist";
		 header("location:view/login?error=user exists");
		}
		else
		{
		 return "new";
		}
}
 if(isset($_POST['Email']))
	echo SignUp($con);
	<?php */?>

<!DOCTYPE html>
<html>

 <head>
<title>Justeats</title>
<!-- for-mobile-apps -->
<?php include 'styles.php' ?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="../js/jquery-1.11.1.min.js"></script>

<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
 
<!-- start-smoth-scrolling -->
<script>
function validationForm(signup){
	if (document.registration.Name.value=="")
	{
        alert ("Please fill in your Name.");
        return false;
    }
if (document.registration.Phone.value=="")
	{
        alert ("Please fill in your phone.");
        return false;
    }
	if(isNaN(document.registration.Phone.value))
	{
		alert("Please check your number");
		return false;
	}
	if(document.registration.Phone.value.length!=10)
	{
		alert("Enter 10 digit number");
		return false;
	}	
	
if (document.registration.Address1.value=="")
    {
        alert ("Please fill in your Address line 1.");
		document.registration.Address1.value.focus();
        return false;
    }
	
    if (document.registration.Address2.value=="")
    {
        alert ("Please fill in your Address line 2.");
        return false;
    }
	if (document.registration.City.value=="")
    {
        alert ("Please fill in your City.");
		document.registration.City.value.focus();
        return false;
    }
	if (document.registration.District.value=="")
    {
        alert ("Please fill in your District.");
		document.registration.District.value.focus();
        return false;
    }
	if (document.registration.Pincode.value=="")
    {
        alert ("Please fill in your Pin code.");
		document.registration.Pincode.value.focus();
        return false;
    }
	
	if (isNaN(document.registration.Pincode.value))
    {
        alert ("Please fill in your correct pincode.");
        return false;
    }
	
	
	 
    if (document.registration.Password.value=="")
    {
        alert ("Please fill in your password.");
        return false;
    }
	if (document.registration.Password.value=="")
    {
        alert ("Please fill in your confirm password.");
        return false;
    } 
	if (document.registration.Password.value!=document.registration.CPassword.value)
    {
        alert (" password mismatch.");
        return false;
	}

}
function validationFormLogin(login){
	if (document.login.Username.value=="")
	{
        alert ("Please fill in your Email Id.");
        return false;
    }
	if (document.login.Password.value=="")
	{
        alert ("Please fill in your Password.");
        return false;
    }
}
</script>
	</head>
<body>

<?php include 'header.php'?>
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.php">Home</a><span>|</span></li>
				<li>Sign In & Sign Up</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	 
 <?php include 'sidenav.php' ?>
               <!-- /.navbar-collapse -->
			
        
		<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <div class="form">
					<h2>Login to your account</h2>
					<form name="login" id="login" action="loginaction.php" method="post">
					  <input type="text" name="Username" placeholder="Username" required>
					  <input type="password" name="Password" placeholder="Password" required>
					  <input type="submit" value="Login" onClick="validationFormLogin(login)">
					<?php 
				   if(isset($_SESSION['error']))
				   {
					   echo $_SESSION['error'];
				   }
				   ?>
                    </form>
                   
				  </div>
				  <div class="form">
					<h2>Create an account</h2>
                   
					<form id="registration" name="registration" action="registration.php"  method="post">
					  <label>Select Type</label>
                      <select name="type" >
 						 <option value="2" selected>Shopper</option>
  						  <option value="3">Seller</option>
  
						  </select>
                      <input type="text" name="Name" id="Name" placeholder="Full Name" required>
                      <input type="text" name="Phone" id="Phone" placeholder="Phone Number" required>
                      <input type="email" name="Email" id="Email" placeholder="Email Address" required>
                      <input type="text" name="Address1" id="Address1" placeholder="Address 1" required>
                      <input type="text" name="Address2" id="Address2" placeholder="Address 2" required>
                      <input type="text" name="City" id="City" placeholder="City" required>
                      <label>Select Type</label>
                      <select name="District" >
 						 <option value="Kasargod" selected>Kasargod</option>
  						  <option value="Kannur">Kannur</option>
                          <option value="Wayanad">Wayanad</option>
                          <option value="Kozhikode">Kozhikode</option>
                          <option value="Malappuram">Malappuram</option>
                          <option value="Thrissur">Thrissur</option>
  
						  </select>
                       <input type="text" name="Pincode" id="Pincode" placeholder="Pincode" required>
                       <input type="text" name="Pancard" id="Pancard" placeholder="Pancard" required>
					  <input type="password" name="Password" id="Password" placeholder="Password" required>
                      <input type="password" name="CPassword" id="CPassword" placeholder="Confirm Password" required>
					  <input type="submit" value="Register" onclick="validationForm()">
					</form>
				  </div>
                  
				  <div class="cta"><a href="#">Forgot your password?</a></div>
                  
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->

	
<?php include 'footer.php'?>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.js"></script>
<script>
		paypal.minicart.render();

		paypal.minicart.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});

	</script>
</body>
</html>
