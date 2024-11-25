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
ArrayList<BookBean> al = (ArrayList<BookBean>)session.getAttribute("alist");
out.println("page belongs to:"+ab.getfName()+"<br>");
if(al.size()==0){
	out.println("Books Not Available...<br>");
}else{
	Iterator<BookBean> it = al.iterator();
	while(it.hasNext()){
		BookBean bb = it.next();
		out.println(bb.getCode() + "&nbsp;&nbsp;" + bb.getName() + "&nbsp;&nbsp;" +
	            bb.getAuthor() + "&nbsp;&nbsp;" + bb.getPrice() + "&nbsp;&nbsp;" +
	            bb.getQty() + "&nbsp;&nbsp;" +
	            "<a href='edit?code=" + bb.getCode() + "'>Edit</a>&nbsp;&nbsp;" +
	            "<a href='delete?bcode=" + bb.getCode() + "'>Delete</a><br>");
	}
}
%>
<a href="logout">Logout</a>
</body>
</html>