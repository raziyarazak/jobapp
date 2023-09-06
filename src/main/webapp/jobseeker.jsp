
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
		<!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles.css">
    <!-- JavaScript and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
 <% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("jobseeker")== null) )
{
%>
<jsp:forward page="signin.jsp"></jsp:forward>
<%} %>
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
section p {
  font-size: 16px;
  font-weight: 300;
}
button {
  max-width: 50%;
  border-radius: 50px !important;
  background-color: #00802b;
    border-color: #00802b;
}
#hero .col {
  justify-content: center; 
  flex-direction: column;
  display: flex;
}
#hero .img-col {
  justify-content: flex-end; 
  margin-top: 100px;
}
#hero img {
  max-width: 130% !important;
  width: 130%;
}
#hero .card {
  box-shadow: 11px 7px 16px #f9f9f9;
  border: 0;
  text-align: center;
}
#hero .icon {
  width: 50px;
  height: 50px;
  margin-bottom: 20px;
}


#projects .projects {
  margin-bottom: 50px;
}


#contact {
  text-align: center;
  background-color: #00802b;
  color: white;
}
#contact h1 {
  text-align: center;
  color: white;
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
    Welcome <%=request.getAttribute("email") %>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">

        <li class="nav-item">
          <a class="nav-link" href="signup.jsp">Registration</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.jsp">login</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/getlogout">Logout</a>
         </li>
         
         
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Job Seeker</a>
        </li>
        <li class="nav-item">
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar -->

<!-- Hero section -->
<section id="hero">
<div class="container">
    <div class="row align-items-center">
      
      <div class="col text-col">
        <h4></h4>
        </br>
         <form method="get" action="getretrievedata">  
         <div class="row cards">

     <div class="container">  
                <br>
                  <div class="mb-3">

       <%
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
         try
	{
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_first","root","W@2915djkq#");
            pst = con.prepareStatement("select distinct job_catogory from user_details");
	    rs=pst.executeQuery();
            
            if(rs.next())
	   {
	      out.println("<tr>");
              out.println("<td>Choose job Category</td>");
	      out.println("<td>");
	      out.println("<select id='inputJobCat' class='form-select' name='combo'>");
	      
	  do{
            String jobcat = rs.getString("job_catogory");
	    out.println("<option value='"+ jobcat  +"'>" +  jobcat+  "</option>");
          }
            while(rs.next());
	   out.println("</select>");
           rs.close();
	   out.println("</td></tr>");
	   out.println ("<tr>");
	   out.println ("<td>");
	   out.println ("<input type='hidden' name='actiontype' value='single'/>");
	   out.println("</td></tr>");
	  
           out.println("</tr><td colspan=2 align=center><input type='submit'value='single'></td></tr>");
          
           }
           else
            {
           out.println("<tr>");
 	   out.println("<td colspan=2 align=right>");
	   out.println("Sorry table is Empty");
           out.println("</td>");
            }	

	   out.println("</form>");
	  }
         
         
        catch(Exception e)
        {
                 e.printStackTrace(); // Or System.out.println(e);
        }	 
                              
        %>
        
         </div>          
          </form>                               
              </div>      
              </div>
              </div> 
   
      <div class="col img-col">
        <img src="https://img.freepik.com/free-vector/tiny-people-searching-business-opportunities_74855-19928.jpg" class="img-fluid" alt="Software Development">
      </div>
  </div>
  </div>
</section>
<!-- End Hero section -->


<script>
    function redirectToAppointment() {
        // Redirect the user to the "appointment.jsp" page
        window.location.href = 'appointment.jsp';
    }
</script>
</body>
</html>