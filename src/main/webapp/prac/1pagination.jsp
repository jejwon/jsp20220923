<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<c:set var="left" value="1"/>
	<c:set var= "right" value="10"/>
	<c:set var="current" value="5"/>
	<c:set var="lastPageNumber" value="20"/>
	
	<%--현재페이지 5로 활성화시키기 --%>
	<%--left가 1이면 Previous 출력 안하기 --%>
	<%--lastPageNumber와 right가 같으면 Next 출력 안하기 --%>
	
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    
	    <c:if test="${left != 1 }">
	    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	    </c:if>
		<c:forEach begin="1" end="10" var="i">
			<li class="page-item
			<c:if test="${current == i }">
	    	active
	   		 </c:if>
			"><a href="" class="page-link">${i }</a>
			</li>
		</c:forEach>
	   	<c:if test="${lastPageNumber } != ${right }">
	    <li class="page-item"><a class="page-link" href="#">Next</a></li>
	   	</c:if>
	  </ul>
	</nav>
		
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>













