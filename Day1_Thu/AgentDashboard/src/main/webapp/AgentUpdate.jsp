<%@page import="com.java.agent.Gender"%>
<%@page import="com.java.agent.Agent"%>
<%@page import="com.java.agent.AgentDAOImpl"%>
<%@page import="com.java.agent.AgentDAO"%>
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
	 int agentId = Integer.parseInt(request.getParameter("agentId"));
	 AgentDAO dao  = new AgentDAOImpl();
	 Agent agent = dao.searchAgentDao(agentId);
	 %>
	 
	 <form method="get" action="AgentUpdate.jsp"	>
	 <center>
	Agent Id : 
		<input type="number" name="agentId" readonly="readonly" 
			value=<%=agent.getAgentId() %> /> <br/><br/>
	Agent Name : 
		<input type="text" name="name" 
			value=<%=agent.getName() %> /> <br/><br/>
	City : 
		<input type="text" name="city" 
			value=<%=agent.getCity() %> /> <br/><br/>
	Gender : 
	<input type="text" name="gender" 
		value=<%=agent.getGender() %> /> <br/><br/>
	Marital Status : 
	<input type="number" name="maritalStatus" 
			value=<%=agent.getMaritalStatus() %> /> <br/><br/> 
	Premium : 
	<input type="number" name="premium" 
			value=<%=agent.getPremium() %> /> <br/><br/>

<input type="submit" value="UPDATE" style="background-color= gray" width="500" height="100" />
	</center>
	 
	 
	 </form>
	 
	 <%

	if(request.getParameter("agentId")!=null && request.getParameter("premium")!=null){

		Agent agentUpdated = new Agent();

		agentUpdated.setAgentId(Integer.parseInt(request.getParameter("agentId")));

		agentUpdated.setName(request.getParameter("name"));
		
		agentUpdated.setCity(request.getParameter("city"));

		agentUpdated.setGender(Gender.valueOf(request.getParameter("gender")));
		
		agentUpdated.setMaritalStatus(Integer.parseInt(request.getParameter("maritalStatus")));

		agentUpdated.setPremium(Double.parseDouble(request.getParameter("premium")));
		
		dao.updateAgentDao(agentUpdated);
		
		%>
			<jsp:forward page="AgentShow.jsp"/>
<%
	}

%>
</body>
</html>