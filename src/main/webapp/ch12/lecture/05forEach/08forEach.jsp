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
	<form action="">
		<input type="number" name="l" id="">
		<input type="number" name="r">
	<c:forEach begin="${param.l }" end="${param.r }" var ="i">
		<p>${i }</p>
	</c:forEach>
		<input type="submit" value="전송">
	</form>
</body>
</html>