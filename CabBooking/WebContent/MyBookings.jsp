<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "CabBooking";
String userid = "root";
String password = "12345";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
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
  margin-right: 200px;
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

/*form
{
  border: 2px solid gray;
  align-items: center;
  margin-right: 500px;
  margin-top: 10px;
}*/

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
  line-height:10px;  
  padding-top:1px;  
}

#sendBtn {
  background-color: dodgerblue;
  color: Black;
  padding: 3px;
  border: none;
  cursor: pointer;
  width: 5%;
  opacity: 0.9;
  margin-right:50px;
}

#sendBtn:hover {
  opacity: 2;
  color:white;
}

.input-field
{
padding:0.5px;
}


.input-field:focus {
  border: 3px solid dodgerblue;
} 





tr
{
	color:blue;
	text-align:center;
}

.green
{
	color:red;
	font-weight:bold;
	text-decoration: underline ;
}

table {
  border-spacing:5px;
  border-color: black;
  font: italic bold 14px/15px Georgia, serif;
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


h2
{
	font-family:Georgia, serif;
	font-size:30px;
	font-style:italic;
	font-weight:600;
}











</style>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
</head>
<body>
       <h1><center> ONLINE CAB BOOKING </center></h1>
     
      <ul>
      	<label id="logo"><img src="logo.jpg"></label>
        <li><a href="userwelcome.jsp"> HOME </a></li>
        <li><a href="search cabs.html"> SEARCH CABS </a></li>
        <li><a class="nav-link active" href="MyBookings.jsp"> MY BOOKINGS </a></li>
        <li><a href="welcome.html"> LOGOUT </a></li>
        
      </ul>
  </body>

<br>

<center>
<h2><b><u>MY BOOKINGS</u></b></h2>
</center>
<br>
<table width="55%" align="center" border="2">
<tr>
<td class="green">Driver Name</td>
<td class="green">Vehicle No</td>
<td class="green">Vehicle Type</td>
<td class="green">From</td>
<td class="green">To</td>
<td class="green">Date</td>
<td class="green">Time</td>
<td class="green">User-Name</td>
<td class="green">Cancel</td>

</tr>
<%
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String UserName=session.getAttribute("UserName").toString();
String sql ="select * from bookings where UserName='"+UserName+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("DriverName") %></td>
<td><%=resultSet.getString("VehicleNo") %></td>
<td><%=resultSet.getString("VehicleType") %></td>
<td><%=resultSet.getString("FromLocation") %></td> 
<td><%=resultSet.getString("ToLocation") %></td>
<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Time") %></td>
<td><%=resultSet.getString("UserName") %></td>
<td><a href="cancel.html">cancel</a></td></tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>