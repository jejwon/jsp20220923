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
	<h3>비교 연산자의 피연산자가 수가 아닐 때</h3>
	<p>${3 < 200 }</p>
	<p>${"3" < "200" }</p><%--false: string 비교 200이 나중에 나오는 수라 작다고 여김 --%>
	<p>${"3" < 200 }</p><%-- true: 둘 중 하나가 수이면 나머지도 수로 변환 --%>
	
	
	
</body>
</html>