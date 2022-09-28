<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = List.of("ska", "tar");
session.setAttribute("names", list);
response.sendRedirect("10to.jsp");
%>