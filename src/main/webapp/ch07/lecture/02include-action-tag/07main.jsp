<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>07 main</h1>
	
	<%
	List<String> list = List.of("java", "html", "css");
	
	%>
	
	<%--
	attribute로 값 전달하기
	 --%>
	
	<%
	request.setAttribute("mylist", list);
	%>
	<div>
	
	<jsp:include page="07sub.jsp">
	
	</jsp:include>
	</div>
</body>
</html>