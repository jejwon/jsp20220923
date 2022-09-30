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
	
	Map<String, Person> map = new HashMap();
	request.setAttribute("people", map);
	
	Person p1 = new Person();
	p1.setName("nate");
	p1.setAge(34);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("brat");
	p2.setAge(37);
	p2.setAlive(true);
	
	map.put("sol1", p1);
	map.put("sol2", p2);
	%>
	
	<p>${people.sol1.name }</p>
	<p>${people.sol1.age }</p>
	<p>${people.sol1.alive }</p>
	<p>${people.sol2.name }</p>
	<p>${people.sol2.age }</p>
	<p>${people.sol2.alive }</p>
	
</body>
</html>