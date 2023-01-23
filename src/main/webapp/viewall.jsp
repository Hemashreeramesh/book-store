
<%@page import="com.js.dto.Book" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List of all books</h1>
<table border="2px solid black">
<tr>
<th>book_id</th>
<th>book_name</th>
<th>author_name</th>
<th>no_of_pages</th>
<th>price</th>
<th>delete</th>
<th>update</th>

</tr>
<%
ArrayList<Book> books=(ArrayList)request.getAttribute("data"); 
for(Book b:books){
	%>
	<tr>
	<td><%=b.getBook_id() %></td>
	<td><%=b.getBook_name() %></td>
	<td><%=b.getAuthor_name() %></td>
	<td><%=b.getNo_of_pages() %></td>
	<td><%=b.getPrice() %></td>
	<td><a href="delete?id=<%=b.getBook_id()%>">delete</a></td>
	<td><a href="update1?id=<%=b.getBook_id()%>">edit</a></td>
	
</tr>
<%} %>
	
</table>
<a href="welcome.html">home</a>

</body>
</html>