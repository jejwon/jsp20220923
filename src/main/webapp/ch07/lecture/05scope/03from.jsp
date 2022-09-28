<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
//request, session, application에 attribute 추가하는 코드
	request.setAttribute("attr1", "reque");
	session.setAttribute("sess1", "sesse");
	application.setAttribute("app1", "appe");
%>

<jsp:forward page="03to.jsp"/>