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
	//object를 넣고 object를 꺼냄-> 형변환 필요
	String s = (String) request.getAttribute("song");
	%>
	
	song : <%= s %>
</body>
</html>