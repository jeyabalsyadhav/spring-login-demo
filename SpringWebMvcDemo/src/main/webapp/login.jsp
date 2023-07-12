<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h2>${msg }</h2>
	<form action="login" method="post">
		Phone:<input type="tel" name="phone"><br>
		Password:<input type="password" name="password"><br>
		<input type="submit" value="Login">
	</form>
	<h3>
		New User?<a href="register.jsp">Register!</a>
	</h3>
</body>
</html>