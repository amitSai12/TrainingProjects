<%@page import="com.java.agent.Gender"%>
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

	 <form method="get" action="AgentAdd.jsp"	>
	 <center>
	Agent Id : 
		<input type="number" name="agentId"/>
			 <br/><br/>
	Agent Name : 
		<input type="text" name="name" /><br/><br/>
			
	City : 
		<input type="text" name="city" /><br/><br/>
	Gender : 
	<select name="gender">
			<option value="MALE">Male</option>
			<option value="FEMALE">Female</option>
			</select> <br/><br/>
	Marital Status : 
	<input type="number" name="maritalStatus" /> <br/><br/>
			
	Premium : 
	<input type="number" name="premium"/> <br/><br/>
		

<input type="submit" value="UPDATE" style="background-color= gray" width="500" height="100" />
	</center>
	 
	 
	 </form>
	 
	 <%

	 if(request.getParameter("agentId")!=null && request.getParameter("premium")!=null){

		Agent agent = new Agent();
		AgentDAO dao = new AgentDAOImpl();

		agent.setAgentId(Integer.parseInt(request.getParameter("agentId")));

		agent.setName(request.getParameter("name"));
		
		agent.setCity(request.getParameter("city"));

		agent.setGender(Gender.valueOf(request.getParameter("gender")));
		
		agent.setMaritalStatus(Integer.parseInt(request.getParameter("maritalStatus")));

		agent.setPremium(Double.parseDouble(request.getParameter("premium")));
		
		dao.addAgentDao(agent);
		
		%>
			<jsp:forward page="AgentShow.jsp"/>
<%
	}

%>

</body>
</html>