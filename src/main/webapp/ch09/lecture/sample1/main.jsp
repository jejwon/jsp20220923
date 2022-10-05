<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		display: flex;
	}
	.main{
		width: 80%;
	}
	.ad{
		width: 20%;
		background-color: linen;
	}
</style>
</head>
<body>
	<!-- .container>.main+.ad -->
	<div class="container">
		<div class="main">
			<h1>메인 페이지</h1>
			<form action="">
			검색: <input type="text" name="q" />
			<input type="submit" value="검색" />
			</form>
			
			<hr />
			<%
			String q = request.getParameter("q");
			
			if(q != null && !q.isBlank()){
			%>
				<h3><%=q %>의 검색 결과</h3>
			<%
				
				String k = URLEncoder.encode(q, "utf-8");
				Cookie cookie = new Cookie("k", k);
				cookie.setPath(request.getContextPath());
				cookie.setMaxAge(24*60*60);//하루(초단위)
				response.addCookie(cookie);
			}
			%>
		</div>
		<div class="ad">
		<jsp:include page= "ad.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>