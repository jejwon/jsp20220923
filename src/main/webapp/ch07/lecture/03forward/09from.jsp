<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
Map<String, String> map = Map.of("sands", "texas", "turner", "london");
request.setAttribute("address", map);
%>
<jsp:forward page = "09to.jsp"/>