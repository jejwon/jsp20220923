<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String nameParam = request.getParameter("name");
									//양옆 공백 제거
	if(nameParam != null && !nameParam.trim().isEmpty()){
		session.setAttribute("userName", nameParam);
	} //한 번 입력-> 세션에 저장-> 새로고침해도 이전에 입력된 값 출력
	
	String name = (String) session.getAttribute("userName");
	if(name == null){
		name = "guest";
	}
	%>
	
	<h1><%= name %>님 반갑습니다.</h1>
	
	<form action=""> <%--이름 입력 --%>
		이름: <input type="text" name = "name">
		<input type="submit" value="등록">
	</form>
	
	<a href = "other1.jsp"> 다른 페이지 가기</a>
	
</body>
</html>