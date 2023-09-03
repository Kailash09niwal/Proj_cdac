  <%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<link rel="stylesheet" href="css/bootstrap.css"></link>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String status="pending";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2,name);
	ps.setString(3,mobilenumber);
	ps.setString(4,email);
	ps.setString(5,bloodgroup);
	ps.setString(6,status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
	}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
	}
%>