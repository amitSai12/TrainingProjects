<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="x" value="3"/>
	You are a :
	<c:choose>
		<c:when test="${x==1}">
			<c:out value="Gay"/>
		</c:when>
		<c:when test="${x==2}">
			<c:out value="Gay"/>
		</c:when>
		<c:when test="${x==3}">
			<c:out value="Man.."/>
		</c:when>
		<c:when test="${x==4}">
			<c:out value="Gay"/>
		</c:when>
	</c:choose>
</body>
</html>