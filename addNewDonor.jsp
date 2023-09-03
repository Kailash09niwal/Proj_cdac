<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body style="background-color:#eae0c8">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="green" size="5"><b>Successfully Updated</b></font></center>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5"><b>Some thing Went Wrong! Try Again !</b></font></center>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from donor");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;"><b>Donor ID:</b> <%out.println(id); %></h1>
	</div>
	<%
	}
	
catch(Exception e)
{}
%>
<div class="container">
<form action="addNewDonorAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<h2><b>Name</b></h2>
<input type="text" placeholder="Enter Name" name="name" required>
<br>
<br>
<h2><b>Father Name</b></h2>
<input type="text" placeholder="Enter Father Name" name="father" required>
<br>
<br>
<h2><b>Mother Name</b></h2>
<input type="text" placeholder="Enter Mother Name" name="mother" required>
<br>
<br>
<h2><b>Mobile Number</b></h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber" required>
<br>
<br>
<h2><b>Gender</b></h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<br>
<br>
<h2><b>Email</b></h2>
<input type="email" placeholder="Enter Email" name="email">
<br>
<br>
<h2><b>Blood Group</b></h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<br>
<br>
<h2><b>Address</b></h2>
<input type="text" placeholder="Enter Address" name="address">
<br>
<br>
<center><button type="submit" class="button">Save</button></center>
</form>
  </div>
<br>
<br>
<br>
<br>
</body>
</html>