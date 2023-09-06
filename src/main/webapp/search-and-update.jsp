<%
if (session.getAttribute("name")== null){
	
	response.sendRedirect("search-and-update.jsp");
}

%>
<%
if (session.getAttribute("role")== null){
	
	response.sendRedirect("search-and-update.jsp");
}

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

    <%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career-First</title>
<!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles.css">
    <!-- JavaScript and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
  <style type="text/css">
  body {
  display: block;
  overflow-x: hidden;
}
nav {
  background-color: #8fc4b7;
}
.navbar-brand img {
  max-height: 50px;
}
.navbar-brand {
  font-size: 24px;
  text-transform: uppercase;
  font-weight: 900;
  color:#00802b;
}
nav ul li a {
  color: #00802b;
  font-size: 22px;
  margin: auto 10px;
}
nav ul li a:hover {
  color:  #a9a9a9;
}
</style>
</head>
<body>
<!-- Navbar -->
<nav class="py-3 navbar navbar-expand-lg fixed-top auto-hiding-navbar">
  <div class="container">
    <a class="navbar-brand"href="#">
      <img class="logo" src="https://ceylonpages.lk/wp-content/uploads/listing-uploads/logo/2021/07/Untitled-1-01.png" /> 
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signup.jsp">Registration</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.jsp">login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getlogout">logout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.jsp"><%=session.getAttribute("name") %></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.jsp"><%=session.getAttribute("role") %></a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar -->
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
			<div class="container">
				<h2>Search and update user</h2>
				<p style='color:magenta'>${feebackMessage}</p>
				<br/>
			</div>
			<div class="container">
			<form action="getuser">			
				<label for="userid">Enter User ID:</label>
				<input class="form-control" type="number" id="id" name="uid" placeholder="Type the user ID"/>
				<input type="hidden" name="actiontype" value="single"/>
				<br/>
				<button type="submit" class="btn btn-info">Search</button>			
			</form>
			
			<hr/>
			</div>
			<div class="container">
				<form class="row g-3" action="usermanager" method="post">
						<div class="col-md-4">
						<label for="userid" class="form-lable">Product Code:</label>
						<input class="form-control" type="number" id="userid" name="userid" disabled value="${user.uid}"/>
						</div>
						<div class="col-md-4">
					    <label for="inputName" class="form-label">User Name</label>
					    <input type="text" class="form-control" id="inputName" name="inputName" value="${user.getName()}">
					  	</div>
			
						  <div class="col-md-4">
						    <label for="inputPassword" class="form-label">Password</label>
						    <input type="password" class="form-control" id="inputPassword" name="inputPassword" value="${user.getPassword()}">
						  </div>
						  <div class="col-md-6">
						    <label for="inputEmail" class="form-label">Email</label>
						    <input type="email" class="form-control" id="inputEmail" name="inputEmail" value="${user.getEmail()}">
						  </div>
						   <div class="col-md-4">
						    <label for="inputJobCat" class="form-label">Job Category</label>
						    <select id="inputJobCat" class="form-select" name="inputJobCat" value="${user.getCatagory()}">
						      <option selected>Choose...</option>
						      <option>Computer Programming</option>
						      <option>Engineering</option>
						      <option>Accountant</option>
						      <option>Marketing</option>
						      <option>Civil Engineer</option>
						      <option>Human Resource</option>
						      <option>Project Management</option>
						      <option>Human Resource Manager</option>
						    </select>
						  </div>
						  <div class="col-4">
						    <label for="inputContactNo" class="form-label">Contact No</label>
						    <input type="text" class="form-control" id="inputContactNo" name="inputContactNo"value="${user.getContactNo()}">
						  </div>
						  
						  <div class="col-4">
						    <label for="inputCountry" class="form-label">Country</label>
						    <input type="text" class="form-control" id="inputCountry" name="inputCountry"value="${user.getCountry()}">
						  </div>
						 
						  <div class="col-6">
							  <input class="form-check-input" type="radio" name="status" id="status" value="${user.getStatus()}">
							  <label class="form-check-label" for="jobSeeker">
							    Job Seeker
							  </label>
							</div>
							<div class="col-6">
							  <input class="form-check-input" type="radio" name="status" id="status" value="${user.getStatus()}">
							  <label class="form-check-label" for="jobConsultant">
							   Job Consultant
							  </label>
							</div>
						  <div class="col-12">
						  <input type="hidden" name="actiontype" value="edit"/>
						    <button type="submit" class="btn btn-warning">Update the Product</button>	
						  </div>
						</form>
						</div>
</body>
</html>