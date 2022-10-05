<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("myName", "nate");
	request.setAttribute("myName", "brat");
	pageContext.setAttribute("your Name", "stark");
	request.setAttribute("22name", "alex");
	%>
	
	<p>${pageScope.myName }</p>
	<p>${requestScope.myName }</p>
	<p>${pageScope["your Name"] }</p>
	<p>${requestScope["22name"] }</p>
</body>
</html>