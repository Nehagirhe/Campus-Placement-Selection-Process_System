
<%@page import="model.CampusDao"%>
<%@page import="model.Job"%>
<%@page import="java.util.ArrayList"%>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="userNav.html" %>
<%

String email=(String)session.getAttribute("email");

%>
<!-- <div class="container" style="background-color: #b5dfcf; padding: 15px; text-align: center;">
    <h4>Add Job</h4>
</div>  -->
<!--  String password=(String)session.getAttribute("password"); -->
<%int id=Integer.parseInt(request.getParameter("id")); %>
<%--<%int id=Integer.parseInt(request.getParameter("id"));
 String title=request.getParameter("title");
  String company=request.getParameter("company");
  String jtype=request.getParameter("jtype");
  String date=request.getParameter("date");
  String skills=request.getParameter("skills");
  String jcity=request.getParameter("jcity");
  String jdescription=request.getParameter("jdescription");--%>
<%ArrayList<Job>al2=new CampusDao().viewDetails();
    for(Job j : al2){ %>
  <%--   <%CampusDao c=new CampusDao();
    Job j1=new Job(id,title,company,jtype,date,skills,jcity,jdescription);%>
 --%>
   <%if(id==(j.getId())){ %>
  <div style="width:550px;"class="container p-3 my-3 bg-dark text-white">  
	  <p><strong>Job Title </strong> <%=j.getTitle()%></p>
	  <p><strong>Company Name:</strong> <%=j.getCompany()%></p>
	  <p><strong>Job Type:</strong> <%=j.getJtype()%></p>
	  <p><strong>Job Post Date:</strong> <%=j.getCompany()%></p>
	  <p><strong>Skills: </strong> <%=j.getCompany()%></p>
	  <p><strong>City:</strong> <%=j.getJcity()%></p>
	  <p><strong>Description:</strong> <%=j.getJdescription()%></p>
	  <!--<p><a href='applyForm.jsp?id=<%=j.getId()%>' class='btn btn-primary'>Apply For This Job</a></p>
	 -->
	 <p><a href='applyForm.jsp' class='btn btn-primary'>Apply For This Job</a></p>
	 </div>
	<%} %>
    <%} %>
         
</body>
</html>