<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chap07.Car"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Car car1 = new Car();
	car1.setModel("avante");
	car1.setPrice(5000);
	request.setAttribute("c", car1);
	
	%>
	<p>${c.model }</p>
	<p>${c.price }</p>
	<p>${c.company }</p> <%--현대만 리턴 --%>
	
	<hr>
	<p>${c["model"] }</p>
	<p>${c["price"] }</p>
	<p>${c["company"] }</p>
</body>
</html>