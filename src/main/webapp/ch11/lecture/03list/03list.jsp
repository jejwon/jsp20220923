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
	java.util.List<String> movie = java.util.List.of("para", "dc", "disney");
	request.setAttribute("list", movie);
	request.setAttribute("k", 1);
	//pageContext.setAttribute("k", 1); ok
	//pageContext.setAttribute("x", 2); ok
	request.setAttribute("x", 2);
	%>
	
	
	<p>${list[0] }</p>
	<p>${list[k] }</p>
	<p>${list[x] }</p>



</body>
</html>