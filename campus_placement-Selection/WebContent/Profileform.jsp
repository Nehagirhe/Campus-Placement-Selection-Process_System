<%@page import="java.util.Enumeration"%>
<%@page import="model.CampusDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
<br>
<br>
<% String email=(String)session.getAttribute("email"); %>

<%User u=new CampusDao().getOneUser(email); 
 if(u!=null){%>
<h4 style='text-align: center;'>***UPDATE PROFILE***</h4>
 <hr>
  <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="uprofile.jsp" method="get" >
       <%--  <input type="hidden" name='email' value=<%=u.getEmail()%> readonly><br>
	--%> 
	
            <div class="form-group">
                <label for="title">FIRSTNAME</label>
                <input type="text" class="form-control" id="title"  name="fname" value=<%=u.getFname()%>>
            </div>
            <div class="form-group">
                <label for="title">LASTNAME</label>
                <input type="text" class="form-control" id="title"  name="lname" value="<%=u.getLname()%>">
            </div>
           <div class="form-group">
                <label for="title">LOGIN</label>
                <input type="text" class="form-control" id="title"  name="email" value="<%=u.getEmail()%>"readonly>
            </div>
            <div class="form-group">
                <label for="title">PASSWORD</label>
                <input type="text" class="form-control" id="title"  name="password" value="<%=u.getPassword()%>">
            </div>
            <div class="form-group">
                <label for="title">MOBILE NO.</label>
                <input type="text" class="form-control" id="title"  name="mobile" value="<%=u.getMobile()%>">
            </div>
            <button type="submit" class="btn btn-primary">Update Profile</button>
     </form>   
    <%}%>
     </div>
</body>
</html>