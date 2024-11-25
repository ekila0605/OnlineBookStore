<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("Welcome Admin:"+ab.getfName()+"<br>");
%>
<a href="Book.html">AddBookDetails</a>
<a href="view1">ViewBookDetails</a>
<a href="logout">LogOut</a>
</body>
</html>