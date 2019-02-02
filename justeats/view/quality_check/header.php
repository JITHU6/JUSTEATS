
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="products.html">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required>
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">  
			<form action="#" method="post" class="last">
                <fieldset>
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="display" value="1" />
                    <input type="submit" name="submit" value="View your cart" class="button" />
                </fieldset>
            </form>
		</div>
		
		<div class="w3l_header_right1">
			<h2><a href="mail.php">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<!--<h1><a href="index.html"><span>Grocery</span> Store</a></h1>-->
                <img src="images/logo.png">
			</div>
				<div class="w3ls_logo_products_left1">			
         		
</script>
			
				<ul class="special_items">
					<!--<li><a href="events.html">Events</a><i>/</i></li>-->
					<li class="navbar navbar-expand-sm   navbar-light bg-light"><a class="navbar-brand" href="reguser_home.php">Home</a></li>
					<li class="navbar navbar-expand-sm   navbar-light bg-light"><a class="navbar-brand" href="reguser_profile.php">Profile</a></li>
                    <li class="navbar navbar-expand-sm   navbar-light bg-light">
          <a href="#" class="navbar-brand" data-toggle="dropdown">Shop<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li role="presentation" class="dropdown-header"></li>
            <li>
                <a href="#">
                    Preview carousel indicators                                
                    
                </a>
            </li>
            <li>
                <a href="#">
                    Simple subscribe form                                
                    
                </a>
            </li>
            </li>
            </ul>
            </a>
            </li>
					<!--<li><a href="services.html">Services</a></li>-->
			</ul>
                
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@justeats.com">store@grocery.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->