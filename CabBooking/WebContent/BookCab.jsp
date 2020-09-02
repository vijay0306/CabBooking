<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>

<%
String VehicleNo=request.getParameter("vehicleno");
String Date=request.getParameter("date");
String Time=request.getParameter("time");
String UserName=session.getAttribute("UserName").toString();
Statement statement = null;
ResultSet resultSet = null;

String DriverName="";
String VehicleType="";
String ContactNo="";
String FromLocation="";
String ToLocation="";


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");
	
	statement=con.createStatement();
	String sql ="SELECT * FROM addcabs where VehicleNo='"+VehicleNo+"'" ;

	
	
	resultSet = statement.executeQuery(sql);
	
	while(resultSet.next())
	{
		
		 String DriverName1= resultSet.getString("DriverName");
		 String VehicleType1= resultSet.getString("VehicleType");
		 String ContactNo1=resultSet.getString("ContactNo");
		 String FromLocation1=resultSet.getString("FromLocation");
		 String ToLocation1=resultSet.getString("ToLocation");
		
		 VehicleType=VehicleType1;
		 ContactNo=ContactNo1;
		 FromLocation=FromLocation1;
		 ToLocation=ToLocation1;
		 DriverName=DriverName1;
	}
		
	
		 
			
	
	
	
	
	Statement st=con.createStatement();
	st.executeUpdate("insert into bookings values('"+DriverName+"','"+VehicleNo+"','"+VehicleType+"','"+FromLocation+"','"+ToLocation+"','"+Date+"','"+Time+"','"+UserName+"')");
	response.sendRedirect("MyBookings.jsp");
	
}
catch(Exception e)
{
	out.println(e);
}

%>

