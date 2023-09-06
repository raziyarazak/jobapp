<%
if (session.getAttribute("name") == null){
	
	response.sendRedirect("landingPage.jsp");
}

%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career First</title>
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
#00802b;
  text-align: left;
  margin-bottom: 20px;
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
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar -->
<!-- Hero section -->
<section id="hero">
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>Software<br>Development</h1>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p>
        <button type="button" class="btn btn-dark btn-large">Learn more</button>
      </div>
      <div class="col img-col">
        <img src="https://img.freepik.com/free-vector/tiny-people-searching-business-opportunities_74855-19928.jpg" class="img-fluid" alt="Software Development">
      </div>
    </div>
    <div class="row cards">

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <img src="https://img.freepik.com/free-vector/woman-setting-her-dates-appointment-booking_23-2148552955.jpg?w=2000" class="icon" alt="Service One"/>
            <h5 class="card-title">Web Dev</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <img src="https://freerangestock.com/sample/116459/job-seeker-.jpg" class="icon" alt="Service Two"/>
            <h5 class="card-title">Machine Learning</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <img src="https://img.freepik.com/premium-vector/job-interview-concept-flat-design-illustration_188398-368.jpg" class="icon" alt="Service Three"/>
            <h5 class="card-title">Security</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
<!-- End Hero section -->
<!-- About us section -->
<section id="about-us">
  <div class="container">
    <div class="row align-items-center">
      <div class="col">
        <img src="https://img.freepik.com/free-vector/teamwork-concept-landing-page_52683-21300.jpg?w=2000" class="img-fluid" alt="About Us">
      </div>
      <div class="col text-col">
        <h1>About Us</h1>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p>
        <button type="button" class=" btn btn-dark btn-large" >Let's meet</button>
      </div>
    </div>
  </div>
</section>
<!-- End About us section -->

<!-- Contact section -->
<section id="contact">
  <div class="container">
    <div class="row align-items-center">
      <div class="col">
        <h1>Contact US</h1>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p>
      </div>
    </div>
  </div>
</section>
<!-- End Contact section -->


</body>
</html>