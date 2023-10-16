<%@page import="java.util.List"%>
<%@page import="com.java.agent.AgentDAOImpl"%>
<%@page import="com.java.agent.AgentDAO"%>
<%@page import="com.java.agent.Agent"%>
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
		AgentDAO dao = new AgentDAOImpl();
		List<Agent> agentList = dao.showAgentDao();
	%>
	
	<table border="3" align="center">
	<tr>
		<th>Agent Id</th>
		<th>Agent Name</th>
		<th>City</th>
		<th>Gender</th>
		<th>Marital Status</th>
		<th>Premium</th>
		<th>Update</th>
	</tr>
	<%
		for(Agent agent : agentList){
	%>
	<tr>
		<td><%=agent.getAgentId() %></td>
		<td><%=agent.getName() %></td>
		<td><%=agent.getCity() %></td>
		<td><%=agent.getGender() %></td>
		<td><%=agent.getMaritalStatus() %></td>
		<td><%=agent.getPremium() %></td>
		
		<td><a href=AgentUpdate.jsp?agentId=<%=agent.getAgentId()%>>Update</a></td>
		<td><a href=AgentDelete.jsp?agentId=<%=agent.getAgentId()%>>Delete</a></td>
	</tr>
	<%
		}
	%>
	</table>
	<br><br>
	<center><button  style="width: 550px; height: 30px; background-color: gray; color: black"><a href=AgentAdd.jsp>Add Agent</a></button></center>
</body>
</html>