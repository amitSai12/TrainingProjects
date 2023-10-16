<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <form method="get" action="Login.jsp">
        <center>
            User Name :
            <input type="text" name="userName"/> <br><br/>
            Password :
            <input type="password" name="password"/> <br><br/>
            <input type="submit" value="Submit"/>
        </center>
    </form>
    
    <%
        if(request.getParameter("userName")!=null && request.getParameter("password")!=null){
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            
            if(userName.equals("infinite") && password.equals("123")){
       %>    
            	<jsp:forward page="Menu.jsp"/>
        <% 
            	
            }else{
                out.println("Invalid Credentials!");
            }
        }
    %>
</body>
</html>