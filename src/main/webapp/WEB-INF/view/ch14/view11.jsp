<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<!-- servlet28 
	doGet : forward view 11.jsp
	
	doPost : insert 실행 후
	INSERT INTO Customers (CustomerName, Address, City, Country) VALUES (?, ?, ?, ?);
	
	servlet23으로 redirect -->
	
	<h1>새 고객 입력</h1>
	
	<form action="" method = "post">
		Name: <input type="text" name = "cname"> <br>
		Address: <input type="text" name = "address"> <br>
		City: <input type="text" name = "city"> <br>
		Country: <input type="text" name = "country">
		<input type="submit" value="등록">
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>







