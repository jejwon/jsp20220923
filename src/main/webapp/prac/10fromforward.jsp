<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//클래스 메소드 parameter 채우기
Person p = new Person();
p.setName("brat");
p.setAge(39);
p.setAlive(true);

request.setAttribute("person1", p);
%>

<jsp:forward page="10toforward.jsp"/>
