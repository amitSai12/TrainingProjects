<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="connection"
	
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/exam"
	user="root"
	password="Amitsai@123"	
	/>
	<sql:query var="agentQuery" dataSource="${connection}">
	select * from agent
</sql:query>
</body>

<c:forEach var="agent" items="${agentQuery.rows}">
	Agent Id:
	<c:out value="${agent.agentId}"/> <br/>
	Agent Name : 
	<c:out value="${agent.name}"/> <br/>
	City : 
	<c:out value="${agent.city}"/> <br/>
	Gender : 
	<c:out value="${agent.gender}"/> <br/>
	Marital Status : 
	<c:out value="${agent.maritalStatus}"/> <br/>
	Premium : 
	<c:out value="${agent.premium}"/> <br/>
	
	<hr/>
</c:forEach>
	
</html>