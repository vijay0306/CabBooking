<%@page import="java.sql.*"%>

 

<%
String UserName=request.getParameter("User Name");
String Password=request.getParameter("Password");
String Email=request.getParameter("email");
String Address=request.getParameter("Address");
String MobileNo=request.getParameter("Mobile No");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");
	Statement st=con.createStatement();
	st.executeUpdate("insert into user (UserName,Password,email,Address,MobileNo) values('"+UserName+"','"+Password+"','"+Email+"','"+Address+"','"+MobileNo+"')");
	response.sendRedirect("UserLogin.html");
}
catch(Exception e)
{
	out.println(e);
}

%>

