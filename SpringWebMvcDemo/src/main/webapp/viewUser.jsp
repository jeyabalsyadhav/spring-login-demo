<%@page import="org.jsp.SpringWebApp.dto.User"%>
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
	<c:choose>
		<c:when test="${u!=null }">
			<h2>Welcome Mr.${u.getName()}</h2>
			<h3>Id:${u.getId()}</h3>
			<h3>Phone:${u.getPhone()}</h3>
		</c:when>
		<c:otherwise>
			<% response.sendRedirect("login.jsp"); %>
		</c:otherwise>
	</c:choose>
</body>
</html>