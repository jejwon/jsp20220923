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
	<h1>award!</h1>
	<div>
		<jsp:include page="6sub.jsp">
		<jsp:param value="1.2" name="vote1"/>
		<jsp:param value="1.3" name="vote2"/>
		</jsp:include>
	</div>
</body>
</html>