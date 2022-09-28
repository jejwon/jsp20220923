<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
//다른 요청+다른 객체라서 04from에서 파라미터의 값을 얻지 못함
response.sendRedirect("04to.jsp");
%>