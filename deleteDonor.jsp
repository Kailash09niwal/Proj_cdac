<%@page import="com.project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<link rel="stylesheet" href="css/bootstrap.css"></link>


<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
	}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
	}
%>