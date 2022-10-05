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
	<form action="10param-to.jsp" method="post">
		이메일: <input type="text" name="email" />
		전화번호: <input type="text" name="phone" />
		상품: <input type="text" name="product"/>
		<input type="submit" value="전송" />
	</form>
</body>
</html>