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
	<form action="12param-to.jsp">
	이름: <input type="text" name="n" /><br />
	영웅들: <br />
	
	<!--input[type=checkbox][name=heros]*5-->
	dare<input type="checkbox" name="heros" value="dare"/>
	quick<input type="checkbox" name="heros" value="quick"/>
	spidy<input type="checkbox" name="heros" value="spidy"/>
	super<input type="checkbox" name="heros" value="super"/>
	bat<input type="checkbox" name="heros" value="bat"/>
	
	<br />
	
	<input type="submit" value="전송" />
	</form>
</body>
</html>