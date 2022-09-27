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
	Map<String, String> map = Map.of("name", "dime", "job", "soldier");
	%>
	<%
	request.setAttribute("doc", map);
	%>
	
	<div>
		<jsp:include page="8sub.jsp"></jsp:include>
	</div>
</body>
</html>