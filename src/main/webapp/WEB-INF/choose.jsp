<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/choose.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>

<div class = "container">
			<h1> Choose your flow prop: </h1>
	
	<div class = "d-inline-flex center justify-content-center" style = "margin-top:100px;">
<c:forEach items = "${props }" var = "p">
	<div class = "card" style = "width:18rem;">
		<div class = "card-image" >
<div class="video" style = "background-color:#202020;" >
    <video class = "video" width = "288" height = "155" >
      <source src="images/${p.prop_name }.mp4"  type="video/mp4">
    </video>
  </div>
</div>
		<div class = "card-body">
			<h5 class = card-title"> ${p.prop_name }</h5>
			<p class = "card-text"> ${p.description } 			
			<form:form action = "/choose" method = "POST" modelAttribute = "userprop">
			<form:input type = "hidden" path = "user" value ="${User.id }"/>
			<form:input type = "hidden" path = "prop" value ="${p.id }"/>
			<input type = "submit" value = "Select Prop" class="btn btn-primary">
			</form:form></p>
		</div>

			
	</div>
</c:forEach>
	 </div>

</div>
</body>

<script>
var figure = $(".card").hover( hoverVideo, hideVideo );

function hoverVideo(e) {  
    $('video', this).get(0).play(); 
}

function hideVideo(e) {
    $('video', this).get(0).pause(); 
}
</script>



</html>