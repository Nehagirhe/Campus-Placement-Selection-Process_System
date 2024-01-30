<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }
        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%String msg=(String) request.getAttribute("msg");%>
<%if(msg!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg%></div>
<%}%>		

<%String email=(String)session.getAttribute("email");
%>
<!--  String password=(String)session.getAttribute("password");  -->

<center><h2>Registration</h2></center>
 <form action="ChangPass.jsp" method="post">
        <label for="oldpass">Old PassWord</label>
        <input type="text" id="oldpass" name="oldpass">

        <label for="newpass">New PassWord:</label>
        <input type="text" id="newpass" name="newpass">

      <!--  <label for="cpass">Confirm PassWord:</label>
        <input type="text" id="cpass" name="cpass">   --> 
        
        <button type="submit">Change My Password</button>
    </form>

</body>
</html>