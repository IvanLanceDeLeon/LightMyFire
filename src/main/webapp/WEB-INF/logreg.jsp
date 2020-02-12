<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap" rel="stylesheet">
  
<link href="https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap" rel="stylesheet">
  
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<h1> Light My Fire</h1>

<div class = "container">
	<div class = "d-flex justify-content-center h-100">
	
					<div class = "card">
			<div class = "card-header">
				<h3>Login!</h3>
			</div>
			<div class = "card-body">			    
			    <p><form:errors path="User.*"/></p>			    
   					<form method="post" action="/login">
   				    	<div class = "input-group form-group">
							<div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
		            <input type="text" id="email" name="email" class = "form-control" placeholder = "E-mail"/>
				        </div>   		            
				         <div class = "input-group form-group">
				            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>   
				            <input type="password" id="password" name="password" class = "form-control" placeholder = "Password"/>
				       </div>   
				        <div class = "form-group">
				        <input type="submit" value="Login"  class="btn float-right login_btn"/>
				        </div>
				    </form>
	    	</div>
	    </div>
		<div class = "card">
			<div class = "card-header">
				<h3>Register!</h3>
			</div>
			<div class = "card-body">			    
			    <p><form:errors path="User.*"/></p>			    
				    <form:form method="POST" action="/registration" modelAttribute="user">
				    	<div class = "input-group form-group">

				            <form:input type="email" class = "form-control" path="email" placeholder = "E-mail"/>
				        </div>    
						<div class = "input-group form-group">
						
				            <form:input type="fullName" path="fullName" class = "form-control" placeholder = "Full Name"/>
				            </div>
				            
				         <div class = "input-group form-group">
				            <form:password path="password" class = "form-control" placeholder = "Password" />
				       </div>   
				         <div class = "input-group form-group">
				            <form:password path="passwordConfirmation" class = "form-control" placeholder = "Confirm Password"/>
				        </div>
				        <div class = "form-group">
				        <input type="submit" value="Register!"  class="btn float-right login_btn"/>
				        </div>
				    </form:form>
	    	</div>
	    </div>
    </div>  
</div>    

    
</body>
<style>
h1{
position:relative;
text-shadow:
		-1px -1px 0 #000,
		1px -1px 0 #000,
		-1px 1px 0 #000,
		1px 1px 0 #000;
left:35%;
top:25%;
font-size:80px;
    font-family: 'Permanent Marker', cursive;
color:yellow;}

</style>
</html>