<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("vote1");
	String y = request.getParameter("vote2");
	
	Double r = Double.valueOf(x) + Double.valueOf(y);
%>

<p>result : <%= r %> M</p>