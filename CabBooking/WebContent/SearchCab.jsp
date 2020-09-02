<%

String FromLocation=request.getParameter("fromlocation");
String ToLocation=request.getParameter("tolocation");

session.setAttribute("fromlocation", FromLocation);
session.setAttribute("tolocation", ToLocation);

response.sendRedirect("SearchCabs1.jsp");

%>
