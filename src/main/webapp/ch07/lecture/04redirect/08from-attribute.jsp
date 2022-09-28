<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
//request attribute : 다른 객체
request.setAttribute("name1", "turner");
//session attribute " 공유 객체
//session type: HttpSession 
session.setAttribute("name2", "carlo");

response.sendRedirect("08to-attribute.jsp");
%>