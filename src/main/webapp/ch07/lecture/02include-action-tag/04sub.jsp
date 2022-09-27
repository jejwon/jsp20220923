<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<div>
	<%-- 같은 request를 사용한다 --%>
		<p>address: <%= request.getParameter("address") %> </p>
		<p>name: <%= request.getParameter("name") %></p>
	</div>