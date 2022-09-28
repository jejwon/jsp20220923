<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--09from.jsp에서 09to.jso로 포워드
아래코드가 null 아닌 값이 오류 없이 출력되도록
09from.jsp완성
 --%>
	<%
		Map<String, String> map = (Map<String, String>) request.getAttribute("address");
	%>
	
	<h1>sands: <%=map.get("sands") %> </h1>
	<h1>turner: <%=map.get("turner") %></h1>
</body>
</html>