<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty param.num1 || empty param.num2 }" var="emptyAll">
		<h1>두 수를 모두 입력하세요</h1>
	</c:if>
	
	<%-- <c:if test="${not empty param.num1 && not empty param.num2 }" > --%>
	<c:if test="${not emptyAll }" >
		<h1>${param.num1 + param.num2 } </h1>
	</c:if>
	
	
	<a href="04from.jsp">돌아가기</a>
</body>
</html>