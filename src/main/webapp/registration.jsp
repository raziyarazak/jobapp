<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
     <%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career First</title>

		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>		
	
</head>
<body>

<form name="form" action="<%=request.getContextPath()%>/getloginservlet" method="post">

		<table align="center">
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" /></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="password" /></td>
		</tr>
		<tr>
		<td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
		</tr>
		<tr>
		<td><input type="reset" value="Reset"></input></td>
		<td><input  class="btn btn-info" type="submit" value="Login"></input></td>
		</tr>
		</table>
		</form>
</body>
</html>