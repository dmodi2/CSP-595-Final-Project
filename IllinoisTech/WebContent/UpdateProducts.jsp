<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page import="java.util.HashMap,bean.*,database.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
HashMap<String,Products> map = new HashMap<String,Products>();
Products prodObj = new Products();

MySqlJDBC mysqlObj=new MySqlJDBC();

//Delete Functionality
String mode = request.getParameter("active");
String pp_id = request.getParameter("productname");
boolean deleteStatus =false;
if(mode!=null&&mode.equals("Delete"))
{
	
	deleteStatus = mysqlObj.deleteProduct(pp_id);
	if(deleteStatus){
		response.sendRedirect("UpdateDeleteProducts.jsp?message=Product deleted successfully");
	}
}		
%>
<%
User user = (User)session.getAttribute("userData");
%>
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
							<li><a href="#">Support</a></li>
					          <li><a href="RetailerHome.jsp">My Actions</a></li>
					          <li><a href="#">Contact</a></li>
					          <li><a href="index.jsp?value=logout">Logout</a></li>
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
		<!-- Top -->
		<!-- Main -->
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
					   <div style="float: left; margin-top: 10px; margin-left:220px; padding-right: 10px; width: 150px:">
				      	<p>Hello, <%=user.getUsername() %></p>
				      </div>
					<div class="right">
						<span class="cart"> <a href="#" class="cart-ico">&nbsp;</a>
							<strong>$0.00</strong>
						</span> <span class="left more-links"> <a href="#">Checkout</a>
					</div>
				</div>
				<!-- End Search, etc -->
				<!-- Content -->
				<div id="content">
					<!--Login Container -->
					<div id="container">
						<div id="login_container">
						
						<%
					String name=request.getParameter("productname");
						if(session.getAttribute("productList")!=null){
							map = (HashMap<String,Products>)session.getAttribute("productList");
							prodObj = map.get(name);
						}
						%>
							<form action='UpdateProductsDB.jsp' method="POST">
							
								<div align="center">
									<h2>Product To Updated</h2>
								</div>
								<label><b>Category:</b></label><br>
								<br>
								<div class="form-group">
						<label for="sel1">Select list:</label> <select
						name="category" id="sel1"> 
						<option value='<%=prodObj.getCategory() %>'><%=prodObj.getCategory() %></option>
										
									</select>
								</div>
								<br>

								<label><b>ProductId:</b></label><br> <input type="text"
									 name="pidtemp" value='<%=prodObj.getPid() %>' id="pidtemp" disabled><br>
									 <input type="hidden"
									 name="pid" value='<%=prodObj.getPid() %>' id="pid">

								<label><b>RetailerId:</b></label><br> <input type="text"
									 name="ridtemp" value='<%=prodObj.getRetailerId() %>'  id="ridtemp" disabled><br>
									 <input type="hidden"
									 name="rid" value='<%=prodObj.getRetailerId() %>'  id="rid">


		<label><b>ProductName:</b></label><br> <input type="text"
		 name="pName" value='<%=prodObj.getProductName()%>' id="pName" required><br>

		<label><b>Image:</b></label><br> <input type="text"
		name="iPath" value=<%=prodObj.getImagePath()%> id="iPath" required><br>

		<label><b>Price:</b></label><br> <input type="text"
		name="price" value=<%=prodObj.getPrce() %> id="price" required><br>



	<label><b>Discount:</b></label><br> <input type="text" name="discount" 
	value = '<%=prodObj.getDiscount()%>' id="discount" required><br> 
									
	<%-- <label><b>Active:</b></label><br>
	<input type="text" value='<%=prodObj.getActive() %>' name="active" id="active" required><br> --%>

								<button type="submit">Update</button>
								
								<br>
							</form>
							
						</div>
						<!-- Brands -->
						<div class="brands">
							<h3>Brands</h3>
							<div class="logos">
								<a href="#"><img src="css/images/logo1.gif" alt="" /></a> <a
									href="#"><img src="css/images/logo2.gif" alt="" /></a> <a
									href="#"><img src="css/images/logo3.gif" alt="" /></a> <a
									href="#"><img src="css/images/logo4.gif" alt="" /></a> <a
									href="#"><img src="css/images/logo5.gif" alt="" /></a>
							</div>
						</div>
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
		</div>
	</div>
	<!-- End Main -->
</body>
</html>
