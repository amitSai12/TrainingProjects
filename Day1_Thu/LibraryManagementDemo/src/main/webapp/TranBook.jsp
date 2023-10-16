<%@page import="com.java.library.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.java.library.LibraryDAOImpl"%>
<%@page import="com.java.library.LibraryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="AllBooks.css">
</head>
<body>
	<jsp:include page="Menu.jsp" />

	<%
	LibraryDAO dao = new LibraryDAOImpl();
	List<Books> returnbooksList = dao.returnBook();
	%>
	<br>
	<br> List Size:
	<%=returnbooksList.size()%>


	<br>
	<br>
	<form method="get" action="returnBook.jsp">
		<h2>Your Books:</h2>
		<center>
			<table border="1">
				<tr>
					<th>Book Id</th>
					<th>User Name</th>
					<th>Taken On</th>
					<th>Select</th>
				</tr>
				</center>
				<%
				for (Books book : returnbooksList) {
				%>
				<tr>
					<td><%=book.getId()%></td>
					<td><%=book.getName()%></td>
					<td><%=book.getFromDate()%></td>
					<%-- <td><input type="checkbox"id="check2" name="check2"
				 value="<%=book.getId()%>">
				</td> --%>
					<td><input type="checkbox" id="check<%=book.getId()%>"
						name="box" value="<%=book.getId()%>"></td>
					<%
					}
					%>
				
			</table>
			<br>
			<br> <input type="submit" value="Confirm" id="return" /><br>
			<br>
	</form>
	</center>
</body>
</html>