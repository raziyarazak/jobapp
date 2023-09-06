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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Career First</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signup.jsp">Registration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signin.jsp">login</a>
      </li>
    </ul>
  </div>
</nav>
<div class="container">
				<ul class="nav nav-tabs">
				  <li class="nav-item">
				    <a class="nav-link" aria-current="page" href="registration.jsp">Add Record</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link active" href="search-and-update.jsp">Search and Update Record</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="getuser?actiotype=all">View all Records and Remove Records</a>
				  </li>
				  
				</ul>
			</div>
				<br/>
<br/>
			<h2>View All & Delete Specific Product</h2>
			<p style='color:magenta'>${message}</p>			
			<br/>	
			
		<table class="table table-striped">
				<thead>
					<tr>
						<th>id_no </th>
						<th> name </th>
						<th>password</th>
						<th>email  </th>
						<th>contact_no  </th>
						<th>job_catogory </th>
						<th>country</th> 
						<th>gender </th>
						<th>role</th>
					</tr>
				</thead>			
				<tbody>
					<tag:forEach var="product" items="${productList}">
						<tr>
							<td>sample</td>
							<td>sample</td>
							<td>sample</td>
							
						</tr>
					</tag:forEach>
				</tbody>
			</table>	
</body>
</html>