<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>라디오 버튼</h1>
	<form action="">
	<input type="checkbox" name = "coffee" value = "americano">아메리카노
	<input type="checkbox" name = "coffee" value = "cafelatte">카페라떼
	<input type="checkbox" name = "coffee" value = "dolce">돌체
	
	<hr>
	<%--라디오 버튼: 같은 name 속성값 중에서 하나만 선택 가능 --%>
	<input type="radio" name = "location" value = "home" >집
	<input type="radio" name = "location" value = "work" >회사
	<input type="radio" name = "location" value = "school" >학교
	
	<input type="submit" value ="전송">
	</form>
</body>
</html>