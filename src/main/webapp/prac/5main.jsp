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
	<div>
		release new movie!
	</div>
	
	<div>
		<jsp:include page="5sub.jsp">
		<jsp:param value="athle" name="title"/>
		<jsp:param value="turner" name="star"/>
		</jsp:include>
	</div>
</body>
</html>