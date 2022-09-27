<%@page import="java.util.List"%>
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
	<h1>[list of candi(dat)es]</h1>
	
	
	<% //list객체 생성 
	List<String> list = List.of("turner", "dime", "fick", "brat");
	%>
	
	<% //값 전달
	request.setAttribute("aList", list);
	%>
	
	<jsp:include page="7sub.jsp"></jsp:include>
</body>
</html>