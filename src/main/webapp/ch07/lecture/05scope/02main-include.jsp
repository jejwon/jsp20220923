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
	<h1>01main.jsp</h1>
	<%
	pageContext.setAttribute("page", "page attr1"); //각 jsp마다 각각의 객체
	request.setAttribute("req1", "req attr1");//main-sub 같은 객체 사용
	session.setAttribute("sess1", "sess attr1");
	application.setAttribute("app1", "app attr1");
	%>
	<div>
	<jsp:include page="02sub-include.jsp"></jsp:include>
	</div>
	
	<%=pageContext.getAttribute("page1") %>
	<%=request.getAttribute("req1") %>
	<%=session.getAttribute("sess1") %>
	<%=application.getAttribute("app1")%>
	
</body>
</html>