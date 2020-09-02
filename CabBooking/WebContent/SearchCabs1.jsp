<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String FromLocation=session.getAttribute("fromlocation").toString();
String ToLocation=session.getAttribute("tolocation").toString();

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CabBooking","root","12345");

Statement statement = null;
ResultSet resultSet = null;
%>




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
  font-style:oblique;
  font: italic bold 15px/20px Georgia, serif;
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

label
{
  padding-left: 700px;
  margin: 5px;
  font-size: 20px;
}

input
{
  margin-left: 700px;
  font-size: 20px;
}


h5
{
  font-size: 25px;
  padding-left: 735px;
}

#sendBtn
{
  color: blue;
  cursor: pointer;
  font-family: sans-serif;
}

#sendBtn:hover {
  opacity: 5;
  color:black;
  background-color: #32CD32;
}

h2
{
	font-family:Georgia, serif;
	letter-spacing:3px;
	
}
h4
{
    font-family: cursive;
    font-size: 50px;
    color: azure;
    font-weight: 500;
    padding-left: 300px;
}



#logo
{
  float: right;
  padding-left: 70px; 
  min-height: max-content;
  margin-right:10px;       
  line-height:8px;  
  padding-top:1px;  
}


table
{
width:60%;
text-align:center;
font-family:Georgia, serif;
 border: 3px solid black;
 color:Black;
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
    color:#FBC02D !important;



</style>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">   
</head>
<body>

       <h1><center> ONLINE CAB BOOKING </center></h1>
     
      <ul>
      	<label id="logo"><img src="logo.jpg"></label>
        <li><a href="user welcome.html"> HOME </a></li>
        <li><a href="search cabs.html"> SEARCH CABS </a></li>
        <li><a href="MyBookings.jsp"> MY BOOKINGS </a></li>
        <li><a href="welcome.html"> LOGOUT </a></li>
        
      </ul>
  </body>




<br>

<h2 align="center"><u>AVAILABLE CAB'S DETAILS </u></h2>
<table align="center" cellpadding="4" cellspacing="4" border="1">  
<tr>

</tr>


<tr bgcolor="#A52A2A">
<td><b>Driver Name</b></td>
<td><b>Vehicle No</b></td>
<td><b>Vehicle Type</b></td>
<td><b>ContactNo</b>
<td><b>From </b></td>
<td><b>To</b></td>
<td><b>Amount</b></td>
<td><b>Book</b></td>
</tr>
<%
try{ 
statement=con.createStatement();
String sql ="SELECT * FROM addcabs where FromLocation='"+FromLocation+"' and ToLocation='"+ToLocation+"'";



resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("DriverName") %></td>
<td><%=resultSet.getString("VehicleNo") %></td>
<td><%=resultSet.getString("VehicleType") %></td>
<td><%=resultSet.getString("ContactNo") %></td>
<td><%=resultSet.getString("FromLocation") %></td>
<td><%=resultSet.getString("ToLocation") %></td>
<td><%=resultSet.getString("Amount") %></td>
<td><a href="BookCab.html">Book</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

