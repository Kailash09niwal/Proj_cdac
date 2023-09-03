<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

body {
  background-image: url('red.jpg;');
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp"><b>Home</b></a>
    <a class="active" href="adminLogin.jsp"><b>Admin Login</b></a>
  </div>
</div>

<div class="container">
<br>
	<br>
	<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg))
	{
	%>
	<center><font color="red" size="5"><b>Invalide Username/Password</b></font></center>
	<%
	}%>
	
<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h1><b>Username</b></h1></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h1><b>Password</b></h1></center>
<input type="password" placeholder="Enter Password" name="password" required><br>
<br>
<center><button type="submit" class="button"><b>Submit</b></button></center>
</div>
</form>
</div>
<br>
<br>
<br>
<br>
</body>
</html>
