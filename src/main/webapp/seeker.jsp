<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

    <%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Sidebar 04</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css">
   
		<link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/custom.css"> 

    <script src="src/WEB-INF/js/main.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
  </head>

  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				
	  		<h1><a href="index.html" class="logo">Make Appoinments</a></h1>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="index.html"><span class="fa fa-home mr-3"></span> Dashboard</a>
          </li>
          <li>
            <a href="SeekerAcceptedList.html"><span class="fa fa-sticky-note mr-3"></span> Accepted List</a>
          </li>
          <li>
            <a href="SeekerRejeectedList.html"><span class="fa fa-sticky-note mr-3"></span> Rejected List</a>
          </li>
          
        </ul>

    	</nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
        <h2 >Find a Consultant</h2>


        <!-- Serch form -->
        
            <div class="container">
              <div class="row">      
                <div class="col-sm ">
                  <label for="floatingSelect">Select Country</label>
                  <div class="form-floating">
                    <select class="form-select" id="selectCountry" aria-label="Floating label select example">
                      <option selected>Open this select menu</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>              
                  </div>
                </div>
                
                <div class="col-sm">
                  <label for="floatingSelect">Select Job</label>
                  <div class="form-floating">
                    <select class="form-select" id="selectCountry" aria-label="Floating label select example">
                      <option selected>Open this select menu</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>              
                  </div>
                </div>
                <div class="col-sm">
                  <label for="floatingSelect">Start Date</label>
                  <div class="form-group pmd-textfield pmd-textfield-floating-label">
                    <input type="datetime-local" id="datetimepicker-start" class="form-control" />
                  </div>
                 </div>
                 <div class="col-sm">
                  <label for="floatingSelect">End Date</label>
                  <div class="form-group pmd-textfield pmd-textfield-floating-label">
                    <input type="datetime-local" id="datetimepicker-end" class="form-control" />
                  </div>
                 </div>
              </div>
              <button type="button" class="btn btn-primary" type="submit">Show Results</button>
            </div>
        
      
      


<!-- start list -->
<div class="card" style="margin-top: 30px;">
  <div class="card-header" style="background-color: green; color: aliceblue;" >
    Available Consultant List
  </div>
  <div class="card-body">
    <div class="container-fluid   justify-content-center">

      <ul class="list-group  text-white">
        <li class="list-group-item d-flex justify-content-between align-content-center">
  
          <div class="d-flex flex-row">
            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="40" />
            <div class="ml-2">
              <h6 class="mb-0">Consultant Name</h6>
              <div class="about">
                <span>Job</span>
                <span>Available time slot</span>
              </div>
            </div>
          </div>
          <div class="check">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Request</button>
            
          </div>
  
        </li>
        </li>
  
        <li class="list-group-item d-flex justify-content-between align-content-center">
  
          <div class="d-flex flex-row">
            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="40" />
            <div class="ml-2">
              <h6 class="mb-0">Turbine parts</h6>
              <div class="about">
                <span>802 Files</span>
                <span>Jan 29, 2020</span>
              </div>
            </div>
          </div>
          <div class="check">
            
            <input class="btn btn-success" type="button" value="Make Appoinment">
          </div>
  
        </li>
      </ul>

      <!-- modal start -->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" >
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Appoinment Form</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form>
                <div class="form-group">
                  <label for="recipient-name" class="col-form-label">Recipient:</label>
                  <input type="text" class="form-control" id="recipient-name" readonly >
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label">Message:</label>
                  <textarea class="form-control" id="message-text" rows="3"></textarea>
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label">Start Time</label>
                  <input type="datetime-local" id="datetimepicker-start" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label">End Time</label>
                  <input type="datetime-local" id="datetimepicker-start" class="form-control" />
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Send Request</button>
            </div>
          </div>
        </div>
      </div>
      <!-- modal Endt -->


      </div>
  </div>
</div>
     
        <!-- end list -->



      
      </div>
      
		</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>