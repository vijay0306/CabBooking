<%
 String UserName=session.getAttribute("UserName").toString();

%>

<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
  <title> WelcomeUserPage </title>
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
  font: italic bold 20px/30px Georgia, serif; 
}

h3
{
  text-transform: capitalize;
  padding-left: 300px;
  font-size: 30px;
	font-family:sofia;
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

h4
{
    font: italic bold 20px/60px Georgia, serif; 
    font-size: 50px;
    color: black;
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





.user
{
	color:white;
	font-size:25px;
	float:right;
	margin-top:10px;
	cursor:pointer;
	text-transform:capitalize;
	font-family:serif;
}


</style>
</head>
<body>

      <h1><center> ONLINE CAB BOOKING </center></h1>
      <br> 
     <ul>
      	<label id="logo"><img src="logo.jpg"></label>
        <li><a class="nav-link active" href="user welcome.html"> HOME </a></li>
        <li><a href="search cabs.html"> SEARCH CABS </a></li>
        <li><a href="MyBookings.jsp"> MY BOOKINGS </a></li>
        <li><a href="welcome.html"> LOGOUT </a></li>
        <div class="user">  <li> <i class="fa fa-user-circle-o" aria-hidden="true"></i><%=UserName%> </li></div>
     </ul>

  <h3> <u>Online Cab Booking </u> </h3>

	<p>Book a City Cab to your destination in town...<br> 
	We give customer satisfaction the atmost priority <br> 
    and so give ample options to book cab by entering <br>
    details such as their pick-up point, drop point ,
    date of journey etc</p>
    <br> 

    <h4> Welcome <%=UserName %> </h4>
   
   
   