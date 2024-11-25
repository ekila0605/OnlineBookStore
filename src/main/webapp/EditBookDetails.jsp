<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book Details</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
BookBean bb = (BookBean)request.getAttribute("bbean");
out.println("Page belongs to: " + ab.getfName() + "<br>");
%>
<form action="update" method="post">
    <input type="hidden" name="bcode" value="<%= bb.getCode() %>">
    BookPrice: <input type="text" name="bprice" value="<%= bb.getPrice() %>"><br>
    BookQty: <input type="text" name="bqty" value="<%= bb.getQty() %>"><br>
    <input type="submit" value="Update Book Details">
</form>
</body>
</html>
