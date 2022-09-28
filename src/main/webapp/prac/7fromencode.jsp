<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.net.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

String snack = "사탕";
String str = URLEncoder.encode(snack, "utf-8");
response.sendRedirect("7toencode.jsp?snack=" + str);

%>