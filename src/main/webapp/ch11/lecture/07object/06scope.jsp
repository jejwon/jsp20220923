<%@page import="java.util.*"%>
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
	pageContext.setAttribute("people", "사람들");
	request.setAttribute("people", Map.of("nate", "fick", "brat", "issac"));
	
	%>
	
	<p>${requestScope["people"]["nate"] }</p>
	<p>${requestScope["people"]["brat"] }</p>
	<p>${requestScope.people.nate }</p>
	<p>${requestScope.people.brat }</p>
</body>
</html>