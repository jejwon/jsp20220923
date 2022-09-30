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
	Map<String, String> map = new HashMap<>();
	map.put("key1", "mars");
	map.put("my name", "sailor");
	map.put("1key", "moon");
	map.put("!@#", "jup");
	
	request.setAttribute("map1", map);
	pageContext.setAttribute("k", "key1");
	%>
	<%--띄어쓰기, 숫자로 시작, 특수기호는 [ ]안에 string으로 넣기 --%>
	<p>${map1.key1 }</p>
	<p>${map1["key1"] }</p>
	<p>${map1["my name"] }</p>
	<p>${map1["1key"] }</p>
	<p>${map1["!@#"] }</p> 
	
	<p>안나옴: ${map1[key1] }</p>
	<p>k속성 있어서 나옴: ${map1[k] }</p> <%--mars --%>
</body>
</html>