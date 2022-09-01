<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Login and Registration</title>
</head>
<body>
	<h1>Welcome!</h1>
	<h3>Join our growing community.</h3>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>Register</h2>
				<form:form action= "/register" method="POST" modelAttribute="newUser">
					<div>
						<form:errors path="*" class="text-danger"/>
					</div>
					<div class="form-group">
						<form:label path="username">Username:</form:label>
						<form:input path="username"/>
					</div><br/>
					<div class="form-group">
						<form:label path="email">Email:</form:label>
						<form:input path="email"/>
					</div><br/>
					<div class="form-group">
						<form:label path="password">Password:</form:label>
						<form:input path="password" type= "password"/>
					</div><br/>
					<div class="form-group">
						<form:label path="confirm">Confirm Password:</form:label>
						<form:input path="confirm" type="password"/>
					</div><br/>
					<button>Create</button>
				</form:form>
			</div><br/>
			<div class="row">
				<div class="col">
					<h2>Log in</h2>
					<form:form action="/login" method="Post" modelAttribute="newLogin">
					<div>
						<form:errors path="*" class="text-danger"/>
					</div><br/>
					<div class="form-group">
						<form:label path="email"> Email:</form:label>
						<form:input path="email"/>
					</div><br/>
					<div class="form-group">
						<form:label path="password"> Password:</form:label>
						<form:input path="password" type="password"/>
					</div><br/>
					<button>Login</button>
				</form:form>
				</div>
				
			</div>
		</div>
	</div>

</body>
</html>