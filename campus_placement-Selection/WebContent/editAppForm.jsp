<%@page import="model.CampusDao"%>
<%@page import="model.Applicant"%>
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
<%@include file="adminNav.html"%>
<br>
<br>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
<%String email=(String)session.getAttribute("email"); %>
<%int id=Integer.parseInt(request.getParameter("id")); 
System.out.println("Form Id: "+id);
%>



<%Applicant ap=new CampusDao().getOneApplicant(id);%>
<% if(ap!=null){%>
	<h4 style='text-align: center;'>***UPDATE APPLICANT***</h4>
 <hr>
  <div class="container" style='background-color: #b5dfcf; padding: 15px'>
        <form action="editApp.jsp" method="post" >
            <input type="hidden" name='id' value=<%=ap.getId()%> readonly><br>
		
           
            <div class="form-group">
                <label for="aname">APPLICANT NAME</label>
                <input type="text" class="form-control" id="aname"  name="aname" value=<%=ap.getAname()%>>
            </div>
            <div class="form-group">
                <label for="aemail">EMAIL</label>
                <input type="text" class="form-control" id="aemail"  name="aemail" value=<%=ap.getAemail()%>>
            </div>
            <div class="form-group">
                <label for="cno">CONTACT NUMBER</label>
                <input type="text" class="form-control" id="cno"  name="cno" value="<%=ap.getCno()%>">
            </div>
            <div class="form-group">
	<label for="ccity">CITY</label>
           <select class="form-control" id="ccity" name="ccity" value="<%=ap.getCcity()%>">          
			<option value="Jaipur">Jaipur</option>
             <option value="Nagpur">Nagpur</option>
          <option value="Pune">Pune</option>
     <option value="Hydrabad">Hydrabad</option>
	</select>
	</div>  
	<div class="form-group">
	<label for="astate">STATE</label>
           <select class="form-control" id="astate" name="astate" value="<%=ap.getAstate()%>">
            <%-- <option value="astate1">---Select---</option>--%>
            <option value="Maharashtra">Maharashtra</option>
          <option value="Hydrabad">hydrabad</option>
     <option value="Jaipur">Jaipur</option>
	</select>
	</div>
	<div class="form-group">
	<label for="acountry">COUNTRY</label>
            <select class="form-control" id="acountry" name="acountry" value="<%=ap.getAcountry()%>">
            <option value="India">India</option>
            <option value="Chin">Chin</option>
            <option value="Japan">Japan</option>
     <option value="US">US</option>
	</select>
	</div>
	<div class="form-group">
                <label for="add">ADDRESS</label>
                <input type="text" class="form-control" id="add"  name="add" value="<%=ap.getAdd()%>">
            </div>
            
            <div class="form-group">
                <label for="adate">DATE OF BIRTH</label>
                <input type="date" class="form-control" id="adate" name="adate" value="<%=ap.getAdate()%>">
            </div>
            <div class="form-group">
                <label for="qualificastion">QUALIFICATION</label>
                <input type="text" class="form-control" id="qualification" name="qualification" value="<%=ap.getQualification()%>">
            </div>
             <button type="submit" class="btn btn-primary">Update</button>
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
</script>
 -->
	

</body>
</html>