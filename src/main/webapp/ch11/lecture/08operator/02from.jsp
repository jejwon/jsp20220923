<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 1);

request.setAttribute("num3", 40);
request.setAttribute("num4", 3);

request.setAttribute("n5", 5);
request.setAttribute("n6", 6);

request.setAttribute("n7", 48);
request.setAttribute("n8", 8);

request.setAttribute("num9", 90);
request.setAttribute("num10", 6);
%>
<jsp:forward page="02to.jsp"/>




