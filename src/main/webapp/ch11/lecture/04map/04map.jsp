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
	map.put("abc", "eee");
	map.put("my key", "lock");
	map.put("blah", "ulah");
	map.put("2", "two");
	
	request.setAttribute("map", map);
	//def의 attr를 찾음: def->blah-> 위 map의 blah-> ulah
	request.setAttribute("def", "blah"); 
	%>

	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def ] }</p>
	<p>${map["2"] }</p>
</body>
</html>