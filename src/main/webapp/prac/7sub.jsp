<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//값 전달
	Object o = request.getAttribute("aList");
	//list 형 변환
	List<String> list = (List<String>) o;
	
	//for문으로 하나씩 출력
	if(list != null){
		for(String name : list){
			out.println("<p>" + name + "</p>");
		}
	}
%>