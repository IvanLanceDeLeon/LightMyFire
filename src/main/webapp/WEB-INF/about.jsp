<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Lato|Roboto&display=swap" rel="stylesheet"> 

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/sidebar.css">
<link rel="stylesheet" type="text/css" href="css/text.css">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
       <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script> <!-- Menu Toggle Script -->

<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

        
        
        <nav class="navbar navbar-expand navbar-dark bg-dark"> <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="/home">Light My Fire <span class="sr-only">(current)</span></a> </li>
                </ul>
                <form class="form-inline my-2 my-md-0"> </form>
            </div>
        </nav>
        <div id="wrapper" class="toggled">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand"> <a href="#">Light My Fire </a> </li>
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
                    <li> <a href = "/about"> What is Flow Arts ?</a> </li>
                    <li> <a href="/services">Services</a> </li>
                    <li> <a href="/logout">Log Out</a> </li>
                </ul>
            </div> <!-- /#sidebar-wrapper -->
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid d-flex flex-column ">
                <img src = "/images/Banner.jpg" width = "800" height = "249">
               	<h1> What is Flow Arts?</h1>
<p>

Flow Arts is a general term used to describe the intersection of a variety of movement-based disciplines including dance, juggling, fire-spinning, and object manipulation. The broad category Flow Arts includes a variety of pursuits that harmonize skill-based techniques with creative expression to achieve a state of present-moment awareness known as Flow.
Common forms of Flow Arts include Poi & Staff spinning, hula hoop (or hooping), juggling, sphere manipulation (or contact juggling), and fan dance. New props and expressions are emerging all the time as flow artists cross pollinate with martial arts, yoga, circus, belly dance, and beyond.
 </p>
 
 <h1> Poi Spinning</h1>
 <p> Poi refers to both a style of performing art and the equipment used for engaging in poi performance. As a performance art, poi involves swinging tethered weights through a variety of rhythmical and geometric patterns. Poi artists may also sing or dance while swinging their poi. Poi can be made from various materials with different handles, weights, and effects (such as fire).</p>
 
 <h1>Contact Staff </h1>
 <p> Contact Staff is a form of object manipulation derived from contact juggling and traditional staff. It involves lots of moves done using your torso, rather than just your hands, to manipulate the staff. It's pretty sweet. Contact staffs differ from regular staffs in their weight and handle type.</p>
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
   <style>
   .card{
  	margin-right:20px;
   width:400px;}
   </style>
  </html>