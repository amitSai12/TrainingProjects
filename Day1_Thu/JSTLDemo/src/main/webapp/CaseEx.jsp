<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form method="get" action="CaseEx.jsp">
	<center>
		Enter your choice:
			<input type="number" name="sno"/>
			
			<input type="submit" value="CHECK"/>
	</center>
	</form>
	</body>
	<c:if test="${param.sno!=null }">

		<c:set var="sno" value="${param.sno}"/>

		<c:choose>

			<c:when test="${sno==1}">

				<c:out value="You are a GAY"/>

			</c:when>

			<c:when test="${sno==2}">

				<c:out value="You are a GAY"/>

			</c:when>

			<c:when test="${sno==3}">

				<c:out value="You are a GAY"/>

			</c:when>

			<c:otherwise>

				<c:out value="Why are you GAY?"/>

			</c:otherwise>

		</c:choose>	

	</c:if>

</html>