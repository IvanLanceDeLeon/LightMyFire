<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutorials</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/sidebar.css">
<link rel="stylesheet" type="text/css" href="css/tutorialMenu.css">
       <link rel="stylesheet" type="text/css" href="/css/text.css">


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
       <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script> <!-- Menu Toggle Script -->
</head>
<body>
      <nav class="navbar navbar-expand navbar-dark bg-dark"> <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="/home">Tutorials<span class="sr-only">(current)</span></a> </li>
                </ul>
                <form class="form-inline my-2 my-md-0"> </form>
            </div>
        </nav>
        <div id="wrapper" class="toggled">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand"> <a href="/home">Light My Fire </a> </li>
                    <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" href="/tutorials" id="navbarDropdown" 
				        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          Tutorials
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="/tutorials/1">Poi</a>
				          <a class="dropdown-item" href="/tutorials/2">Hoop</a>
				     	  <a class="dropdown-item" href="/tutorials/3">Rope Dart</a>
				          <a class="dropdown-item" href="/tutorials/4">Contact Staff</a>
						</div>
				      </li>
                    <li> <a href="/tutorials">Tutorials</a> </li>
                    <li> <a href="/building">Build-A-Prop Workshop</a> </li>
                    <li> <a href="/choose">Choose a Flow Prop</a> </li>
                    <li> <a href="/services">Services</a> </li>
                    <li> <a href="/logout">Log Out</a> </li>
                </ul>
            </div> <!-- /#sidebar-wrapper -->
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
    <h1 >Tutorials</h1>
    <div class="row row-flex">
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="content colour-1">
          <h3><a href = "/tutorials/1/">Poi Tutorials</a></h3>
          <p>Two is better than one</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="content colour-2">
          <h3><a href = "/tutorials/2/">Hoop Tutorials</a></h3>
          <p>Circles for days</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="content colour-3">
          <h3><a href = "/tutorials/3/">Rope Dart Tutorials</a></h3>
          <p>Get over here! </p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="content colour-4">
          <h3><a href = "/tutorials/4/">Contact Staff Tutorials</a></h3>
          <p>This is what being a jedi is like</p>
        </div>
      </div>
      				</div>
                </div>
            </div> <!-- /#page-content-wrapper -->
        </div> <!-- /#wrapper -->
</body>

        <script>
          $(function(){
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });

            $(window).resize(function(e) {
              if($(window).width()<=768){
                $("#wrapper").removeClass("toggled");
              }else{
                $("#wrapper").addClass("toggled");
              }
            });
          });
           
        </script>
   
  </html>
