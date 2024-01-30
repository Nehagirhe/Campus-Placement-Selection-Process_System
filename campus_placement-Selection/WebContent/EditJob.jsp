<%@page import="model.CampusDao"%>
<%@page import="model.Job"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<body>
<%@include file="adminNav.html" %><br>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
<%
String email=(String)session.getAttribute("email");
%>
<%int id=Integer.parseInt(request.getParameter("id")); %>
  
		<% 	Job j = new CampusDao().getOneJob(id);
			
			if(j!=null)
			{
				%>
  <!--  String password=(String)session.getAttribute("password");  -->
  
<h4 style='text-align: center;'>***UPDATE JOB INFO***</h4>
 <hr>
  <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="Editserv.jsp" method="post" >
        <input type="hidden" name='id' value="<%=j.getId()%>" readonly><br>
		
            <div class="form-group">
                <label for="title">JOB TITLE</label>
                <input type="text" class="form-control" id="title"  name="title" value="<%=j.getTitle()%>">
            </div>
             <div class="form-group">
	<label for="company">COMPANY</label>
           <select class="form-control" id="company" name="company" value="<%=j.getCompany()%>">
            <option value="Wipro">Wipro</option>
          <option value="Mphasis">Mphasis</option>
     <option value="Excellon">Excellon</option>
	</select>
	</div>
	<div class="form-group">
	<label for="jtype">JOB TYPE</label>
           <select class="form-control" id="jtype" name="jtype" value="<%=j.getJtype()%>">
            <option value="Full Time">Full Time</option>
          <option value="Part Time">Part Time</option>
    	</select>
	</div>
	<div class="form-group">
                <label for="date">JOB POSTED DATE</label>
                <input type="date" class="form-control" id="date" name="date" value="<%=j.getDate()%>">
            </div>
             <div class="form-group">
                <label for="skills">SKILLS REQUIRED</label>
                <input type="text" class="form-control" id="skills"  name="skills" value="<%=j.getSkills()%>">
            </div>
            <div class="form-group">
	<label for="jcity">CITY</label>
           <select class="form-control" id="jcity" name="jcity" option value="<%=j.getJcity()%>">
            <option value="Jaipur">Jaipur</option>
            <option value="Nagpur">Nagpur</option>
          <option value="Pune">Pune</option>
     <option value="Hydrabad">Hydrabad</option>
	</select>
	</div>
            <div class="form-group">
                <label for="Jdescription">JOB DESCRIPTION</label>
                <textarea class="form-control" id="Jdescription" rows="3" name="Jdescription" value=<%=j.getJdescription()%>></textarea>
            </div>           
            <button type="submit" class="btn btn-primary">Add Job</button>
     </form>
         <%}%>
         </div>   
  <!--  <script>
    // JavaScript code for handling "Select All" functionality

    // Get the "Select All" checkbox and individual checkboxes
    const selectAllCheckbox = document.getElementById('selectAllCheckbox');
    const checkboxes = document.querySelectorAll('.selectCheckbox');

    // Add an event listener to the "Select All" checkbox
    selectAllCheckbox.addEventListener('change', function () {
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAllCheckbox.checked;
        });
    });

    function confirmSelected() {
        document.getElementById('confirmForm').submit();
    }
</script>-->
</body>
</html>