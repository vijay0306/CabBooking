<%@page import="java.sql.*"%>

<%
String UserName=request.getParameter("user_id");
String Password=request.getParameter("password");

if(UserName.equals("Admin") && Password.equals("12345") )
{
	response.sendRedirect("Admin welcome.html");
}
else
{
	out.println("Invalid Credintials"); 
}


%>
