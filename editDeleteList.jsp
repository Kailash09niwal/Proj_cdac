<%@page import="com.project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<link rel="stylesheet" href="css/bootstrap.css"></link>
<html>
<head>
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
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
<center><font color="blue" size="5"><b>Successfully Updated</b></font></center>
<%
}
%>
<%
if("invalid".equals(msg))
{%>
<center><font color="red" size="5"><b>Some thing went wrong! Try Again!</b></font></center>
<%
}
%>
<%
if("deleted".equals(msg))
{%>
<center><font color="green" size="5"><b>Successfully Deleted</b></font></center>
<%
}
%>
<center>
<table id="customers">
<tr>
<th><b>ID</b></th>
<th><b>Name</b></th>
<th><b>Father Name</b></th>
<th><b>Mother Name</b></th>
<th><b>Mobile Number</b></th>
<th><b>Gender</b></th>
<th><b>Email</b></th>
<th><b>Blood Group</b></th>
<th><b>Address</b></th>
<th><b>Edit</b></th>
<th><b>Delete</b></th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from donor");
	while(rs.next())
	{
%>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><a href="updateDonor.jsp?id=<%=rs.getInt(1)%>">Edit</a></td>
<td><a href="deleteDonor.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
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