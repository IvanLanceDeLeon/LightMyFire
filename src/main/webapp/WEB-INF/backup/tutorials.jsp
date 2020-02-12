<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> <c:out value = "${Prop.prop_name }"/></h1>
	<c:forEach items = "${Skills }" var = "s">
		<li> <a href = "/tutorials/1/${s.id }">${s.skill_name }</a> </li>
	</c:forEach>
</body>
</html>