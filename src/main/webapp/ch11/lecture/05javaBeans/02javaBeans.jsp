<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chap07.Book"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Book b1 = new Book("bone", 300);
	Book b2 = new Book("hench", 500);
	
	request.setAttribute("book1", b1);
	request.setAttribute("book2", b2);
	%>

	<p>${book1.title }</p>
	<p>${book1.price }</p>
	<p>${book2.title }</p>
	<p>${book2.price }</p>
</body>
</html>