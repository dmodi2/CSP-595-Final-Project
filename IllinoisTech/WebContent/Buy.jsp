<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@page import="bean.Products, bean.Cart, bean.User"%>
<%@page import="database.MySqlJDBC"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>IllinoisTech Sporting Goods</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><style type="text/css" media="screen">.tabbed { height:420px; }</style><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery.slide.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
	<div id="body">
		<!-- Top -->
		<div id="top">
			<div class="shell">
				<!-- Header -->
				<div id="header">
					<h1 id="logo">
						<a href="#">IllinoisTech Sporting Goods</a>
					</h1>
					<div id="navigation">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">Login</a></li>
							<li><a href="Signup.jsp">Sign Up</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</div>
				</div>
				<!-- End Header -->
				<!-- Slider -->
				<div id="slider">
					<div id="slider-holder">
						<ul>
							<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
							<li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
							<!--<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>-->
						</ul>
					</div>
					<div id="slider-nav">
						<a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a>
					</div>
				</div>
				<!-- End Slider -->
			</div>
		</div>
		<div id="main">
			<div class="shell">
				<!-- Search, etc -->
				<div class="options">
					<div class="search">
						<form action="#" method="post">
							<span class="field"> <input type="text" class="blink"
								value=" search here.." title="SEARCH" />
							</span> <input type="text" class="search-submit" value="GO" />
						</form>
					</div>
					<div class="right">
						<span class="cart"> <a href="#" class="cart-ico">&nbsp;</a>
							<strong>$0.00</strong>
						</span> <span class="left more-links"> <a href="#">Checkout</a>
					</div>
				</div>
				    <div id="content">
      <!--Login Container -->
      <div id="container">
      	<div id="login_container">
      	
					
			<div id="login_container">
			<% String sum = request.getParameter("sum"); 
				String orderid = request.getParameter("orderid");
			User user = (User)request.getSession().getAttribute("userData");
			//System.out.println("user");
			%>
			<%
			Date date = new Date();

			DateFormat format = new SimpleDateFormat("MM/dd/YYYY");
			%>
			<h2>Your Total Cost is  <%= sum %></h2>
			<br>
      		<form action='invoice.jsp' method="post">
      			<div align="center">
							<h2>Enter your shipping address</h2>
						</div>
						<br><br>
						<label><b>Shipping Address</b></label><br> 
						<input type="text" placeholder="Enter Shipping number" name="shipAddress" id = "shipAddress" required><br>
						<div align="center">
							<h2>Enter Credit/Debit Card Details</h2>
						</div>
						
						<br><br>
						<label><b>Credit Card Number</b></label><br> 
						<input type="text" placeholder="Enter CreditCard number" name="ccnumber" id = "ccnumber" required><br> 
						
						<label><b>CVV</b></label><br>
						<input type="text" placeholder="Enter CVV" name="cvv" id = "cvv" required><br>
						
						<label><b>Name on Card</b></label><br>
						<input type="text" placeholder="Name on Card" name="name" id = "name" required><br>
						
						<label><b>Expiry Date(MM/YY)</b></label><br>
						<input type="text" placeholder="Expiry Date" name="expiry" id = "expiry" required><br>
						
						<!-- <label><b>Shipping Address</b></label><br>
						<input type="text" placeholder="Billing Address" name="address" id = "address" required><br> -->
						
						<button type="submit">Purchase</button><br>
						<input type="hidden" name="sum" value="<%=sum%>"/>
						<input type="hidden" name="orderid" value="<%=orderid%>"/>
					</form>
					<label><b>Or</b></label><br>
      	</div>
		
			
					  	
        <!-- Brands -->
        <div class="brands">
          <h3>Brands</h3>
          <div class="logos"> <a href="#"><img src="css/images/logo1.gif" alt="" /></a> <a href="#"><img src="css/images/logo2.gif" alt="" /></a> <a href="#"><img src="css/images/logo3.gif" alt="" /></a> <a href="#"><img src="css/images/logo4.gif" alt="" /></a> <a href="#"><img src="css/images/logo5.gif" alt="" /></a> </div>
        </div>
        <!-- End Brands -->
				<!-- End Brands -->
				<!-- Footer -->
				<div id="footer">
					<div class="left">
						<a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span>
						<a href="#">My Account</a> <span>|</span> <a href="#">The
							Store</a> <span>|</span> <a href="#">Contact</a>
					</div>
					<div class="right">
						&copy; Design by Grad Students at <a href="https://web.iit.edu">Illinois
							Tech</a>
					</div>
				</div>
				<!-- End Footer -->
			</div>
			<!-- End Container -->
		</div>
		<!-- End Content -->
	</div>
	<!-- End Main -->
	</div>
</body>
</html>
		
