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
	String[] sung = {"ost1", "ost2", "ost3"};
	request.setAttribute("song", sung);
	%>

	<hr>
	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>

</body>
</html>