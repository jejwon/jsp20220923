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
	<h1>04to.jsp</h1>
	<p>name 파라미터: <%=request.getParameter("name") %></p>
	<%--다른 요청+다른 객체라서 04from에서 파라미터의 값을 얻지 못함 --%>
</body>
</html>