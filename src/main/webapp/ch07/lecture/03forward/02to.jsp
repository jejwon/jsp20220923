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
<%--같은 request 사용: from의 param사용 가능 --%>
	name: <%=request.getParameter("name") %> <br>
	age: <%=request.getParameter("age") %> 
</body>
</html>