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
	<form action="save" method="post">
		Name:<input type="text" name="name"><br> 
		Phone:<input type="tel" name="phone"><br> 
		Password:<input type="password" name="password"><br> 
		<input type="submit" value="Register">
	</form>
</body>
</html>