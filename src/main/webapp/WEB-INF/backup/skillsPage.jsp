<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><c:out value = "${Skill.skill_name }"/> </h1>
<h2> <c:out value = "${Skill.description}"/></h2>
<h3> <c:out value = "${Skill.level}"/></h3>
<form:form action = "/learn" method = "POST" modelAttribute = "learnSkill">
	<form:input type = "hidden" path = "user" value ="${User.id }"/>.
	<form:input type = "hidden" path = "skill" value ="${Skill.id }"/>.
	<input type = "submit" value ="Learned!">
</form:form>
<form:form action = "/todo" method = "POST" modelAttribute = "skillToLearn">
	<form:input type = "hidden" path = "user" value ="${User.id }"/>.
	<form:input type = "hidden" path = "skill" value ="${Skill.id }"/>.
	<input type = "submit" value ="Learn This Skill!">
</form:form>
<iframe width="560" height="315" src="${Skill.video }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>