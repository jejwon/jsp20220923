<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import= "jsp20220923.chap07.Person" %>
<% request.setCharacterEncoding("utf-8"); %>
<% 
//person 클래스 이용한 list생성/
List<Person> obj = new List<>();
//person 클래스 객체 생성 
Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();
//객체에 name propety넣기 
p1.setName("s");
p2.setName("t");
p3.setName("u");
//list에 객체 넣기
obj.add(p1);
obj.add(p2);
obj.add(p3);
//list 정하기 요청 
request.setAttribute("list", obj);
%>
<jsp:forward page="11toforward.jsp"/>