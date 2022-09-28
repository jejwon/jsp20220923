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
	<h1>6to page</h1>
	
	<h1>이름: <%=request.getParameter("first") %></h1>
	<h1>성: <%=request.getParameter("last") %></h1>
</body>
</html>