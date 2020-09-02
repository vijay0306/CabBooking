<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.JOptionPane"%>


<%
String UserName=request.getParameter("user_id");
String Password=request.getParameter("password");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");
	Statement st=con.createStatement();
	session.setAttribute("UserName", UserName);
	ResultSet rs=st.executeQuery("select * from user where UserName='"+UserName+"' and Password='"+Password+"'");

	if(rs.next())
	{
		response.sendRedirect("userwelcome.jsp");
	}
	else 
	{
		response.sendRedirect("error.html");
	}
	
	
}
catch(Exception e)
{
	out.println(e);
}


%>
