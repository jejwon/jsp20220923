<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
		영어: <input type="text" name = "x"> <br>
		수학: <input type="text" name = "y"> <br>
		국어: <input type="text" name = "z"> <br>
		<input type="submit"  value= "평균 구하기">
	</form>
	
	<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String z = request.getParameter("z");
	
	Integer numX = 0;
	Integer numY = 0;
	Integer numZ = 0;
	
	if(x != null && y != null && z != null){
		numX = Integer.valueOf(x);
		numY = Integer.valueOf(y);
		numZ = Integer.valueOf(z);
	}
	
	double avg = (numX + numY + numZ) / 3.0;
	%>
	
	<hr>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
	
	<p> 영어, 수학, 국어의 평균 점수는 <%= avg %>점 입니다.</p>
</body>
</html>