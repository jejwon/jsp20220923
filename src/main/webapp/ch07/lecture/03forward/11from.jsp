<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chap07.Person"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<Person> o1 = new ArrayList<>();

Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();

p1.setName("sands");
p2.setName("turner");
p3.setName("kay");

o1.add(p1);
o1.add(p2);
o1.add(p3);
request.setAttribute("list", o1); //하위타입으로
%>

<jsp:forward page= "11to.jsp"/>