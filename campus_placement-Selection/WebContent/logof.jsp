<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="adminNav.html" %>
<%String msg4=(String) request.getAttribute("msg4");%>
<%if(msg4!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg4%></div>
<%}%>
 <%String msg=(String) request.getAttribute("msg");%>
<%if(msg!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg%></div>
<%}%> 


<h4 style='text-align: center;'>***Add Company***</h4>
 <hr>
    <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="upload2" method="post" enctype="multipart/form-data" >         
 <div class="form-group">
           <label for="picture">COMPANY LOGO</label>
           <input type="file" class="form-control-file" id="picture" name="logo">
           </div>
             <button type="submit" class="btn btn-primary">Add Company</button>
         </form>
     </div>
     </body>
     </html>