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
	<h1>상품 목록</h1>
	
	<table class="table">
		<thead>
			<tr>
				<td></td>
				<td>상품명</td>
				<td>공급자</td>
				<td>분류번호</td>
				<td>물류량</td>
				<td>가격</td>
				<tbody>
					<%-- <c:forEach items = "${products }" var = "product">
						<tr>
							<td>${product.id }</td>
							<td>
								<c:url>
									<c:param name = "id" value = "${product.id }"/>
								</c:url>
								<a href="${updateUrl }">
									${product.name }
								</a>
							</td>
							 --%>
							 
						<tr>
							<td>${product.id }</td>
							<td>${product.name }</td>	 
							<td>${product.supplier }</td>
							<td>${product.category }</td>
							<td>${product.unit }</td>
							<td>${product.price }</td>
						</tr>
					<%-- </c:forEach> --%>
				</tbody>
			</tr>
		</thead>
	</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>