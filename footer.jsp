<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body style="background-color:#eae0c8">
<br>
<center>
<table id="customers">
<tr>
<th><b>Id</b></th>
<th><b>Name</b></th>
<th><b>Mobile Number</b></th>
<th><b>Email</b></th>
<th><b>Blood Group</b></th>
<th><b>Action</b></th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bloodrequest");
	while(rs.next())
	{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><a href="updateRequest.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
</tr>
<%
	}
}
catch(Exception e)
{
	System.out.println(e);
	}
%>
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>