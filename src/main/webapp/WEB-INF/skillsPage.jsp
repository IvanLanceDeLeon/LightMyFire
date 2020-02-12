<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    		 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    		
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutorials</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
<script type="text/javascript" src="/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="/css/sidebar.css">
<link rel="stylesheet" type="text/css" href="/css/tutorials.css">
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
<h1><c:out value = "${Skill.skill_name }"/> </h1>
<h2> <c:out value = "${Skill.description}"/></h2>
<h3> Level:   <c:out value = "${Skill.level}"/></h3>
<div class = "d-flex row"  id = "buttons">
<form:form action = "/learn" method = "POST" modelAttribute = "learnSkill">
	<form:input type = "hidden" path = "user" value ="${User.id }"/>
	<form:input type = "hidden" path = "skill" value ="${Skill.id }"/>
	<input type = "submit" value ="Learned!" class = "btn btn-primary mb-2">
</form:form>
<form:form action = "/todo" method = "POST" modelAttribute = "skillToLearn">
	<form:input type = "hidden" path = "user" value ="${User.id }"/>
	<form:input type = "hidden" path = "skill" value ="${Skill.id }"/>
	<input type = "submit" value ="Learn This Skill!" class = "btn btn-primary mb-2">
</form:form>
</div>
<iframe width="750" height="500" src="${Skill.video }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
