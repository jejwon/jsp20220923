<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chap07.Person"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Person p1 = new Person();
	Person p2 = new Person();
	
	p1.setAge(34);
	p1.setAlive(true);
	p1.setName("nate");
	
	p2.setAge(37);
	p2.setAlive(true);
	p2.setName("brat");
	
	request.setAttribute("sol1", p1);
	request.setAttribute("sol2", p2);
	%>
	
	<p>${sol1.age }</p>
	<p>${sol2.age }</p>
	<p>${sol1.name }</p>
	<p>${sol2.name }</p>
	<p>${sol1.alive }</p>
	<p>${sol2.alive }</p>
</body>
</html>