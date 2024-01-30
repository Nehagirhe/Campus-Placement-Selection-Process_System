<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- <%@adminNav.html%> --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="adminNav.html" %>
<br>
<br>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
<% 
String email=(String)session.getAttribute("email");
%>
<!--  String password=(String)session.getAttribute("password");  -->
 <h4 style='text-align: center;'>***Add JOB***</h4>
 <hr>
    <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="adjob" method="post" >
            <div class="form-group">
                <label for="title">JOB TITLE</label>
                <input type="text" class="form-control" id="title"  name="title">
            </div>
             <div class="form-group">
	<label for="company">COMPANY</label>
           <select class="form-control" id="company" name="company" >
            <option value="company1">---Select---</option>
            <option value="company2">Wipro</option>
          <option value="company3">Mphasis</option>
     <option value="company">Excellon</option>
	</select>
	</div>
	<div class="form-group">
	<label for="jtype">JOB TYPE</label>
           <select class="form-control" id="jtype" name="jtype" >
           // <option value="jtype1">---Select---</option>
            <option value="Full Time">Full Time</option>
          <option value="Part Time">Part Time</option>
    	</select>
	</div>
	<div class="form-group">
                <label for="date">JOB POSTED DATE</label>
                <input type="date" class="form-control" id="date" name="date">
            </div>
             <div class="form-group">
                <label for="skills">SKILLS REQUIRED</label>
                <input type="text" class="form-control" id="skills"  name="skills">
            </div>
            <div class="form-group">
	<label for="jcity">CITY</label>
           <select class="form-control" id="jcity" name="jcity" >
            <option value="jcity1">---Select---</option>
            <option value="Nagpur">Nagpur</option>
          <option value="Pune">Pune</option>
     <option value="Hydrabad">Hydrabad</option>
	</select>
	</div>
            <div class="form-group">
                <label for="Jdescription">JOB DESCRIPTION</label>
                <textarea class="form-control" id="Jdescription" rows="3" name="Jdescription"></textarea>
            </div>          
            <button type="submit" class="btn btn-primary">Add Job</button>
        </form>
    </div>
    <script>
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
</script>
</body>
</html>