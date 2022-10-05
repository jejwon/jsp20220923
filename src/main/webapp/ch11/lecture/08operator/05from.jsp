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
	<form action="05to.jsp" method= "post">
		더하기<input type="text" name= "num1" value = "3">
		<input type="text" name= "num2" value = "5">
		빼기<input type="text" name= "num3" value = "78">
		<input type="text" name= "num4" value = "34">
		<input type="submit" value="전송">
	</form>
</body>
</html>