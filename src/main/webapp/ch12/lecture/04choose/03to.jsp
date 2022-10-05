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
	<h2>영화추천</h2>
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			<h3>spy 추천</h3>
		</c:when>
		
		<c:when test="${param.genre == 'family' }">
			<h3>coco 추천</h3>
		</c:when>
		
		<c:when test="${param.genre == 'action' }">
			<h3>mission impossible 추천</h3>
		</c:when>
		
		<c:otherwise>
			<h3>장르를 comedy, family, action 중에서 선택하세요</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>