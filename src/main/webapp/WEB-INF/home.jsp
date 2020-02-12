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
                <div class="container-fluid d-flex flex-row ">
                <div class="card">
 		 <div class="card-body">
   		 <h4 class="card-title"><c:out value = "${User.fullName }"/></h4>
    		<p class="card-text">
			Flow Artist since : <c:out value = "${User.createdAt }"/>
			<hr>
			<h3>Flow Props</h3>
<c:forEach items = "${Props}" var = "p">
	<h4> "${p.prop.prop_name }" </h4>
	</c:forEach>
    <a href="#!" class="btn btn-primary">Edit profile</a>
  </div>
</div>
<div class = "">
<h1> Moves to Learn</h1>
<c:forEach items = "${todo}" var = "t">
	<h4><a href ="/tutorials/${t.skill.prop.id }/${t.skill.id}"> ${t.skill.skill_name }</a> </h4>

	
	</c:forEach> 
		
<h1> Moves You Learned</h1>
	<c:forEach items = "${Skills}" var = "s">
	<h4> <a href = "/tutorials/${s.skill.prop.id }/${s.skill.id}">${s.skill.skill_name }</a> </h4>
	</c:forEach> 
</div>
                </div>
                <div class = "container-fluid d-flex flex-row">
                <c:forEach items = "${Props }" var = "prop">
                <img src = "images/${prop.prop.prop_name }_icon.png">
                
                </c:forEach>
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
   <style>
   .card{
  	margin-right:20px;
   width:400px;}
   </style>
  </html>