<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Person p1 = (Person) request.getAttribute("person1");
	%>
	
	<p>name: <%=p1.getName() %></p>
	<p>age: <%=p1.getAge() %></p>
	<p>alive: <%=p1.isAlive() %></p>
	
	<hr>
	<h3>el사용</h3>
	<p>name: ${person1.name}</p>
	<p>age: ${person1.age}</p>
	<p>alive: ${person1.alive }</p>
</body>
</html>