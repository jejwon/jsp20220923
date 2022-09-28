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
	<h1>08to-attribute.jsp</h1>
	<%
	String str1 = (String) request.getAttribute("name1"); //못꺼냄, 다른 객체
	String str2 = (String) request.getAttribute("name2"); //꺼낼 수 있음, 공유 객체
	%>
	
	<h1>name1: <%=str1 %></h1>
	<h1>name2: <%=str2 %></h1>
</body>
</html>