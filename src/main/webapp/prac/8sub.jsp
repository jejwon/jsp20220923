<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>

<% 
	Object o = request.getAttribute("doc");
	Map<String, String> map = (Map<String, String>) o;
	
	if(map != null){
%>
	<p><%=map.get("name") %></p>
	<p><%=map.get("job") %></p>
	
<%
}
%>