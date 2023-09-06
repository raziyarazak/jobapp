


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
		<!-- Include Moment.js CDN -->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</head>
<body>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="update.jsp">
<table border="1">
<%

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_first","root","W@2915djkq#");
String query = "SELECT id_no, name, country, email,job_catogory FROM user_details WHERE job_catogory=? AND role IN ('consultant')";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>

<td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>
<td><input type="text" name="country" value="<%=rs.getInt("country")%>"></td>
<td><input type="text" name="jobcategory" value="<%=rs.getString("job_catogory ")%>"></td>
<td><input type="hidden" name="id" value="<%=rs.getString("id_no")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
 <div class="container">
    <div class="row align-items-center">
      <div class="col">
        <img src="https://img.freepik.com/free-vector/teamwork-concept-landing-page_52683-21300.jpg?w=2000" class="img-fluid" alt="About Us">
      </div>
      <div class="col text-col">
 
         <h4>Appointment Form</h4>
				<form class="row g-3" action="usermanager" method="get">
						<div class="col-6">
					    <label for="inputName" class="form-label">Name</label>
					    <input type="text" class="form-control" id="name" name="name" value="${user.getuName()}">
					  	</div>
						  <div class="col-md-4">
						    <label for="inputEmail" class="form-label">Email</label>
						    <input type="email" class="form-control" id="email" name="email">
						  </div>
						  
						  <div class="col-4">
						    <label for="inputContactNo" class="form-label">Contact No</label>
						    <input type="text" class="form-control" id="contactno" name="contactno">
						  </div>
						  
						  <div class="col-4">
						    <label for="inputCountry" class="form-label">Country</label>
						    <input type="text" class="form-control" id="country" name="country">
						  </div>
							<div class="col-4">
						    <label for="inputCountry" class="form-label">Job Category</label>
						    <input type="text" class="form-control" id="jobcategory" name="jobcategory">
						  </div>
						  <div class="col-12">
						  <input type="hidden" name="actiontype" value="single"/>
						    <button type="submit" class="btn btn-info">Submit</button>
						  </div>
						</form>
						</div>
						</div>
</div>
</body>

</html>