<%@page import="com.java.employ.Employ"%>
<%@page import="java.util.List"%>
<%@page import="com.java.employ.EmployDAOImpl"%>
<%@page import="com.java.employ.EmployDAO"%>
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
		EmployDAO dao = new EmployDAOImpl();
		List<Employ> employList = dao.showEmployDao();
	%>
	
	<table border="3" align="center">
	<tr>
		<th>Employ No</th>
		<th>Employ Name</th>
		<th>Gender</th>
		<th>Department</th>
		<th>Designation</th>
		<th>Basic</th>
		<th>Update</th>
	</tr>
	<%
		for(Employ employ : employList){
	%>
	<tr>
		<td><%=employ.getEmpno() %></td>
		<td><%=employ.getName() %></td>
		<td><%=employ.getGender() %></td>
		<td><%=employ.getDept() %></td>
		<td><%=employ.getDesig() %></td>
		<td><%=employ.getBasic() %></td>
		<td><a href=EmployUpdate.jsp?empno=<%=employ.getEmpno()%>>Update</a></td>
		<td><a href=EmployDelete.jsp?empno=<%=employ.getEmpno()%>>Delete</a></td>
	</tr>
	<%
		}
	%>
	</table>
	<br><br>
	<center><button  style="width: 550px; height: 30px; background-color: gray; color: black"><a href=EmployAdd.jsp>Add Employ</a></button></center>
</body>
</html>