<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen"></link>
 <link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
.mySlides {display:none;}
/* adding css style for class myslides */

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
<title>Blood Bank Management System</title>
</head>
<body style="background-color:#ffdab9">

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp"><b>Home</b></a>
    <a href="adminLogin.jsp"><b>Admin Login</b></a>
    <a href="aboutus.jsp"><b>About us</b></a>
    <br>
    <br>
    <br>
    <h6><b>Donor Contact us</b></h6>
    <h6><img class="logo1" src="tel.png"/>  1122334455</h6>
    <h6><img class="logo1" src="mail.png">  admin@gmail.com</h6>
  </div>
</div>


<div style="max-width:100%">
  <img class="mySlides"  src="blood.jpg" >
  <img class="mySlides"  src="blood0.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	%>
	<center><font color="green" size="5"><b>Form Submitted Successfully. You Will get notified as soon as possible.</b></font></center>  
  <%
  }
  %>
  <%
  if("invalid".equals(msg))
  {
	%>
	<center><font color="red" size="5"><b>Invalid Data! Try Again !</b></font></center>  
  <%
  }
  %>
  
 <center><h1 style="text-align: center; color: black"><b>Enter Your Details to Request for Blood</b></h1></center><br>
 <form action="indexFormAction.jsp" method="post">
 <center>
 <input type="text" name="id" placeholder="Enter Id" required>
 <input type="text" name="name" placeholder="Enter Name" required>
 <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
 <input type="mail" name="email" placeholder="Enter Email Address" required>
 <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
 <button class="button1"><span>Submit</span></button> 
 </center>
 </form>
 
<br>         
<br>
</body>
<footer>
<h2 style="text-align: center; color: black"><b>Recent Blood Request Activity</b></h2>
 <%
  String msg1=request.getParameter("msg1");
  if("valid".equals(msg1))
  {
%>
	<center><font color="green" size="5"><b>Data Updated Successfully</b></font></center>  
  <%
  }
  %>
  <%
  if("invalid".equals(msg1))
  {
	%>
	<center><font color="red" size="5"><b>Invalid Data! Try Again !</b></font></center>  
  <%
  }
  %>
<%@include file="footer.jsp"%>
</footer>
</html>

