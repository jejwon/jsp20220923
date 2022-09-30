<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*, jsp20220923.chap07.*"  %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Car> list = new ArrayList<>();
	request.setAttribute("cars", list);
	Car c1 = new Car();
	Car c2 = new Car();
	
	c1.setPrice(100);
	c1.setModel("boong");
	c2.setPrice(200);
	c2.setModel("brr");
	list.add(c1);
	list.add(c2);
	
	%>
	

	<p>${cars[0].company }</p>
	<p>${cars[0].model }</p>
	<p>${cars[0].price }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].model }</p>
	<p>${cars[1].price }</p>
	
</body>
</html>