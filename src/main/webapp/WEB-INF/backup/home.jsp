<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/sidebar.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<div class = "container">

<button type="button" class="btn btn-primary">Primary</button>
<h1> Welcome ! <c:out value = "${User.fullName }"/> </h1>
<h2> Your props:
	<c:forEach items = "${Props}" var = "p">
	<li> "${p.prop.prop_name }" </li>
	</c:forEach>
</h2>

<h1> Moves to Learn</h1>
<c:forEach items = "${todo}" var = "t">
	<ul><a href ="/tutorials/${t.skill.prop.id }/${t.skill.id}"> ${t.skill.skill_name }</a> </ul>
	
	</c:forEach> 
<h1> Moves You Learned:</h1>
	<c:forEach items = "${Skills}" var = "s">
	<li> <a href = "/tutorials/${s.skill.prop.id }/${s.skill.id}">${s.skill.skill_name }"</a> </li>
	</c:forEach> 
<a href = "/logout"> Log fOut</a>

<a href = "/tutorials"> Tutorials</a>
</div>
</body>
</html>