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
	<form action="13paramValues-to.jsp">
		<input type="text" name="order-date" value= "2022-09-30"/>
		<select name="prod" id="" multiple="" size="5">
			<option value="banana">바나나</option>
			<option value="apple">사과</option>
			<option value="plum">자두</option>
			<option value="ananas">파인애플</option>
			<option value="mango">망고</option>
		</select>
		
		<br />
		<input type="submit" value="주문" />
	</form>
</body>
</html>