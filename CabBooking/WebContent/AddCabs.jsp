<%@page import="java.sql.*"%>

<%
String DriverName=request.getParameter("drivername");
String VehicleNo=request.getParameter("Vechicle no");
String VehicleType=request.getParameter("vechicletype");
String ContactNo=request.getParameter("number");
String FromLocation=request.getParameter("fromlocation");
String ToLocation=request.getParameter("tolocation");
String Amount=request.getParameter("amount");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");
	Statement st=con.createStatement();    
	st.executeUpdate("insert into addcabs (DriverName,VehicleNo,VehicleType,ContactNo,FromLocation,ToLocation,Amount) values('"+DriverName+"','"+VehicleNo+"','"+VehicleType+"','"+ContactNo+"','"+FromLocation+"','"+ToLocation+"','"+Amount+"')");
	response.sendRedirect("Add cabs page.html");
		
}
catch(Exception e)
{
	out.println(e);
}

%>