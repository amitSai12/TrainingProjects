<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="style.css">
</head>
<body >
<div class="card-holder">
 <div class="card bg-aurora">
 <form method="get" action="AddUser.jsp">
	
<h1>
	Create User
</h1>		<input type="text" name="userName" placeholder="User Name"/> <br><br> 
		
		<input type="password" name="password" placeholder="Password"/> <br><br>
		 
		<input type="password" name="retypePassword" placeholder="Retype Password"/> <br><br>
		<input id = "sub" type="submit" name="Login" value="Create" />
		
	</form></div>
</div>
	
	
	<c:if test="${param.userName!=null && param.password!=null}">
	<c:if test="${param.password == param.retypePassword}">
	<jsp:useBean id="libUsers" class="com.java.library.LibUsers"/>
	<jsp:setProperty property="*" name="libUsers"/>
	<jsp:useBean id="beanDao" class="com.java.library.LibraryDAOImpl"/>
	<%=beanDao.createUser(libUsers) %>
	</c:if>
	</c:if>
	
</body>
</html>