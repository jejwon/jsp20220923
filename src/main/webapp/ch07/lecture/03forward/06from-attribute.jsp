<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
//object를 넣고 object를 꺼냄-> 형변환 필요
request.setAttribute("song", "hybs");
%>

<jsp:forward page="06to-attribute.jsp"/>