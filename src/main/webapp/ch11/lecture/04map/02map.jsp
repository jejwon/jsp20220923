<%@page import="java.util.Map"%>
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
	Map<String, String> map = Map.of("x", "man", "y", "why", "abc", "eee");
	request.setAttribute("map1", map);
	
	//Map<String, String> map = new HashMap<>();
	//map.put("x", "man");
	//map.put("y", "why");
	//map.put("abc", "eee");
	//map.put("do rong", "sleep"); xxx
	%>

	<p>${map1.x }</p>
	<p>${map1.y }</p>
	<p>${map1.abc }</p>
<%--	<p>${map1.do rong }</p> exception--%> 
</body>
</html>