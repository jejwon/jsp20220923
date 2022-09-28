<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%--
attribute 넣고
11to.jsp로 redirect 해서

11to.jsp에서 오류없이 null이 아닌 값 출력
--%>

<%
Map<String, String> obj = Map.of("song1", "sep", "song2", "oct");
session.setAttribute("songs", obj);
response.sendRedirect("11t0.jsp");
%>