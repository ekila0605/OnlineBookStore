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
String msg = (String)request.getAttribute("msg");
out.println("page belongs to:"+ab.getfName()+"<br>");
out.println(msg);
%>
<a href="Book.html">AddBookDetails</a>
<a herf="view1">ViewBookDetails</a>
<a href= "logout">Logout</a>
</body>
</html>