<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%String msg=(String) request.getAttribute("msg");%>
<%if(msg!= null){%>
<br><div class='alert alert-danger' role='alert'><%=msg%></div>
<%}%>
<%String msg2=(String) request.getAttribute("msg2");
if(msg2 !=null){%>
<br><div class='alert alert-success' role='alert'><%=msg2%></div>
<%}%>
<center><h2>Login Form </h2>
<hr>
<div class="container">
  <form action="LogUser.jsp" >
 <b>Email    : <input type="text" name="email"><br><br></b>
 <b>PassWord : <input type="text" name="password"><br><br></b>  
  
    <input type="submit" class="btn btn-success"></button>
  <button type="button" class="btn btn-primary"><a href="registration.html" style="color: white; text-decoration: none;">
  Not Yet Registered</button> 
  </form>
  <br>
 <!-- <a href="loginserv">Go to loginserv</a> -->
</div>
</center>
</body>
</html>