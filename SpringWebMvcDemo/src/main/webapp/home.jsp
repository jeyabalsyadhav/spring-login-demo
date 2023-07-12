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
			<h3>
				View User?<a href="viewUser.jsp">Click here!</a>
			</h3>
			<h3>
				Update User?<a href="update.jsp">Update!</a>
			</h3>
			<h3>
				Delete User?<a href="delete?id=${u.getId()}">Click here!</a>
			</h3>
			<h3>
				Logout?<a href="logout">Click here!</a>
			</h3>
		</c:when>
		<c:otherwise>
			<%response.sendRedirect("login.jsp"); %>
		</c:otherwise>
	</c:choose>
</body>
</html>