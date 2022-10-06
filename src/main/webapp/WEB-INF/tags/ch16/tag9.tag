<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="dynam" %>

<div>
	<c:forEach items="${dynam }" var="dyn">
		<p>${dynam.value }</p>
	</c:forEach>
</div>