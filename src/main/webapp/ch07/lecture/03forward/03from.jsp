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
<%-- 02from.jsp?address=seoul&email=ej@so.dom --%>
	<jsp:forward page="03to.jsp">
	</jsp:forward>
</body>
</html>