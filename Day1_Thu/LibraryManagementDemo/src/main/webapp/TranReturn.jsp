<%@page import="com.java.library.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.java.library.LibraryDAOImpl"%>
<%@page import="com.java.library.LibraryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
        LibraryDAO dao = new LibraryDAOImpl();
 		 List<Books> returnbooksList = dao.returnBook();
    %>
    <br><br> List Size: <%= returnbooksList.size() %>
    
    
    <br><br><form method="get" action="TranReturn.jsp">
    <h2>Your Books:</h2>
    <center>
    <table border="1">
        <tr>
            <th>Book Id</th>
            <th>User Name</th>
            <th>Taken On</th>
            <th>Returned On</th>
        </tr>
    </center>
    <%
        for(Books book : returnbooksList){
    %>
    <tr>
        <td><%=book.getId() %></td>
        <td><%=book.getName() %></td>
        <td><%=book.getFromDate() %></td>
        <td><%=book.getToDate()%></td>
<%
        }
%>
     </table>
    <br><br>
    <input type="submit" value="Back" id="return" /><br><br>
    </form>
    </center>
</body>
</html>