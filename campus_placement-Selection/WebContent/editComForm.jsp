<%@page import="model.CampusDao"%>
<%@page import="model.Company"%>
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
<%@include file="adminNav.html"%><br><br>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
<br>
<br>
<%String email=(String)session.getAttribute("email"); %>
<%int id=Integer.parseInt(request.getParameter("id")); %>
<%Company c=new CampusDao().getOneCompany(id);%>
<%if(c!=null){ %>
<h4 style='text-align: center;'>***UPDATE COMPANY***</h4>
 <hr>
  <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="editcomp" method="post" >
            <input type="hidden" name='id' value=<%=c.getId()%> readonly><br>
		
           
            <div class="form-group">
                <label for="aname">NAME</label>
                <input type="text" class="form-control" id="cname"  name="cname" value=<%=c.getCname()%>>
            </div>
            <div class="form-group">
                <label for="aemail">EMAIL</label>
                <input type="text" class="form-control" id="cemail"  name="cemail" value=<%=c.getCemail()%>>
            </div>
            <div class="form-group">
                <label for="cno">CONTACT NUMBER</label>
                <input type="text" class="form-control" id="cno"  name="cno" value="<%=c.getCno()%>">
            </div>
            <div class="form-group">
                <label for="cno">WEBSITE</label>
                <input type="text" class="form-control" id="website"  name="website" value="<%=c.getWebsite()%>">
            </div>
            <div class="form-group">
	<label for="ccity">CITY</label>
           <select class="form-control" id="city" name="city" value="<%=c.getCity()%>">          
			<option value="Jaipur">Jaipur</option>
             <option value="Nagpur">Nagpur</option>
          <option value="Pune">Pune</option>
     <option value="Hydrabad">Hydrabad</option>
	</select>
	</div>  
	<div class="form-group">
	<label for="astate">STATE</label>
           <select class="form-control" id="state" name="state" value="<%=c.getState()%>">
            <%-- <option value="astate1">---Select---</option>--%>
            <option value="Maharashtra">Maharashtra</option>
          <option value="Hydrabad">hydrabad</option>
     <option value="Jaipur">Jaipur</option>
	</select>
	</div>
	<div class="form-group">
                <label for="add">ADDRESS</label>
                <input type="text" class="form-control" id="add"  name="add" value="<%=c.getAddress()%>">
            </div>
            
            <div class="form-group">
                <label for="description">DESCRIPTION</label>
                <input type="description" class="form-control" id="adate" name="description" value="<%=c.getDescription()%>">
            </div>
            
             <button type="submit" class="btn btn-primary">Update</button>
            </form>
            <%}%>
            </div>
</body>
</html>