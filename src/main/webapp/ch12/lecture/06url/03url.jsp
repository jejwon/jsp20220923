<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<%--완성된 url을 page영역 attribute(el 변수)로 저장하기 --%>
	<c:url value="https://search.naver.com/search.naver" var="naverSleepy" scope="page">
		<c:param name="query">드르렁</c:param>
	</c:url>
	
	<br />
	
	<a href="<c:url value="https://search.naver.com/search.naver">
		<c:param name="query">드르렁</c:param>
	</c:url>">네이버에서 드르렁 검색</a>
	
	<br />
	
	<a href="${naverSleepy }">드르렁 검색결과 보기</a>	
	
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
















