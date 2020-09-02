<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
  <title> Error page </title>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
  body
  {
    background: url("cab2.jpg");
    background-size: cover;
    color: black;  
    border-bottom: #333;
    padding-top: 20px;
  }
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
  letter-spacing: 3px;
  margin-left: 260px;
  margin-right: 260px;
   font: italic bold 15px/20px Georgia, serif;
  font-style:oblique;
}

li 
{
  float: left;
  border-right:1px solid #bbb;
}

li:last-child 
{
  border-right: none;
}

li a 
{
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/*li a:hover:not(.active) 
{
  background-color: rgb(90, 87, 87);
}

/*.active {
  background-color: #4CAF50;
}*/

p
{
  padding-left: 300px;
  color: black;
  font-weight: 500;
  font-size: 20px;
  font-family: sans-serif;
  text-align: justify;
}

h3
{
  text-transform: capitalize;
  padding-left: 300px;
  font-size: 30px;

}

/*label
{
  padding-left: 700px;
  margin: 5px;
  font-size: 20px;
}

input
{
  margin-left: 700px;
  font-size: 20px;
}*/

form
{
  align-items: center;
  padding-left: 600px;
  margin-top: 10px;
}

h5
{
  font-size: 25px;
  padding-left: 680px;
}


#sendBtn
{
  color: blue;
  cursor: pointer;
  font-family: sans-serif;
}

h4
{
    color: rgb(255, 255, 255);
    padding-left: 750px;
    cursor: pointer;
    font-size: 15px;
    font-family: 1em sans-serif;;
}

#logo
{
  float: right;
  padding-left: 70px; 
  min-height: max-content;
  margin-right:10px;       
  line-height:10px;  
  padding-top:1px; 
  margin-top:4px; 
}



#sendBtn {
  background-color: dodgerblue;
  color: white;
  padding: 8px;
  border: none;
  cursor: pointer;
  width: 7%;
  opacity: 0.9;
  margin-right:50px;
  
}

#sendBtn:hover {
  opacity: 1;
}

.alert {
  padding: 30px;
  background-color:green;
  color: white;
  text-align: center;
  margin-top: 100px;
  margin-left: 350px;
  margin-right: 350px;
  font-size: 28px;
  font: italic bold 25px/20px Georgia, serif;
  letter-spacing:2px;
}




ul a:hover{
  color: red !important;
}

li > a:after{
    content: '';
    display: block;
    height: 1.5px;
    background: #FBC02D;
    transform: scaleX(0);
    transition: transform .3s;
}
li > a:hover:after{
    transform: scaleX(1);
    transition: transform .3s;
}
.active{
    color:#FBC02D  !important;
}


</style>


</head>
<body>
     
     
     <center><h1> <u> ONLINE CAB BOOKING </u></h1></center>
 
  <ul>
      	<label id="logo"><img src="logo.jpg"></label>
        <li><a href="user welcome.html"> HOME </a></li>
        <li><a href="search cabs.html">SEARCH CABS </a></li>
        <li><a href="MyBookings.jsp"> MY BOOKINGS </a></li>
        <li><a href="welcome.html"> LOGOUT </a></li>
      </ul>
 

    <div class="alert">
        <i class="fa fa-thumbs-o-up" style="font-size:40px"></i> Your Booking Has Been Cancelled...
      </div>


</body>
</html>



<% 

	String DriverName=request.getParameter("drivername");
	String VechicleNo=request.getParameter("vechicleno");
	
	String UserName=session.getAttribute("UserName").toString();
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");
		Statement st=con.createStatement();
		st.executeUpdate("delete from bookings where DriverName='"+DriverName+"' and VehicleNo='"+VechicleNo+"' and UserName='"+UserName+"'");
	
		
		response.sendRedirect("MyBookings.jsp");
	
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
	
%>

