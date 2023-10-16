<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="gray" textsize="50">
	 <form method="get" action="Calc.jsp">
	 	<center>
	 	<b> First No :</b>
	 	<input type="number" name="firstNo"/> <br><br>
	 	
	 	<b> Second No :</b>
	 	<input type="number" name="secondNo"/> <br><br>
	 	
	 	<input type="submit" value="CALCULATE"/>
	 	</center>
	 </form>
	 
	 <%
	 	if(request.getParameter("firstNo")!=null && request.getParameter("secondNo")!=null){
	 %>
	 
	 <jsp:useBean id="beanCalc" class="com.java.beans.Calculation"/>
	 
	 <jsp:setProperty property="*" name="beanCalc"/>
	 
	 Sum is : <b><%=beanCalc.sum() %></b> <br><br>
	 Sub is : <b><%=beanCalc.sub() %></b> <br><br>
	 Mult is : <b><%=beanCalc.mult() %></b>
	 
	 <%
	 	}
	 %>
</body>
</html>