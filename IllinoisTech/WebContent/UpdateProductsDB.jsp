<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.*, database.MySqlJDBC, bean.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
User user = (User) session.getAttribute("userData");
	MySqlJDBC mysql = new MySqlJDBC();

	String category = request.getParameter("category");
	String pid = request.getParameter("pid");
	String rid = request.getParameter("rid");
	String pName = request.getParameter("pName");
	String iPath = request.getParameter("iPath");
	String price = request.getParameter("price");
	String discount = request.getParameter("discount");
	String active = request.getParameter("active");
	mysql.updateProducts(category, pid, rid, pName ,iPath, price, discount, active );
	if(user.getRole().equalsIgnoreCase("manager")){
		response.sendRedirect("UpdateDeleteProducts.jsp?message=Product updated Successfully");
	}
	else{
		response.sendRedirect("RetailerModify.jsp?message=Product updated Successfully");
	}
	
	
	
	
	
	
	

%>
</body>
</html>