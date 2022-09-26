<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체크박스</h1>
	
	<form action="" >
	<input type="text" name = "name" value = "holic"><br>
	<input type="checkbox" name="coffee" value = "americano"><br>아메리카노
	<input type="checkbox" name="coffee" value = "latte" ><br>라떼
	<input type="checkbox" name="coffee" value = "capuccino"><br>카푸치노
	<input type="checkbox" name= "non" value = "milktea" ><br>밀크티
	<input type="checkbox" name= "non" value ="ade" >에이드
	
	<input type="submit" value="전송">
	</form>
	
	<%
	String name = request.getParameter("name");
	String[] coffees = request.getParameterValues("coffee");
	%>
	<p>
	<%= name %>님이 선택한 음료는
	
	<%
	if(coffees != null){
		for(String coffee : coffees){
			out.print(coffee);
			out.print("");
		}
	}
	%>
	입니다.
	</p>
	
	
</body>
</html>