<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
     <%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career First</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />
	<style type="text/css">
section {
  padding-top: 25px;
  padding-bottom: 25px;
height:20px;
            width:100%;
}
	</style>	
</head>


<body class="container-fluid" style="background-color: #8fc4b7;">
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<input type="hidden" id="role" value=" <%= request.getAttribute("role") %>">
    <div class="card" style="width: 600px; margin: auto; margin-top: 50px" >
        <h3 class="text-light card-header text-light" style="background-color: #558B2F;" align="center">Login Form</h3>
       
       <form class="px-md-2" name="form" action="<%=request.getContextPath()%>/getloginservlet" method="post">
            <table class="table table-hover">
                <tr>
                    <td>Email</td>
                    
                <td><input type="email" id="email" name="email" class="form-control" required/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" id="password" name="password" class="form-control" required /></td>
                </tr>
                <tr>
		<td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
		<td></td>
		</tr>
	
		<tr>
		<td style="background-color: #558B2F;"><input class="btn btn-light"  type="submit" value="Login"></input></td>
		<td style="background-color: #558B2F;"></td>
		<td style="background-color: #558B2F;"></td>
		<td>
		<input class="btn btn-light" type="reset" value="Reset"></input>
		<a class="btn btn-light" href="signup.jsp" role="button">Sign Up</a></td>
		</tr>
            </table>
        </form>
    </div>

<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success")
		{
		swal("failed","failing","error");
		}
	var role = document.getElementById("role").value;
	if(status == "success")
		{
		swal("failed","failing","error");
		}
	</script>

</body>
</html>