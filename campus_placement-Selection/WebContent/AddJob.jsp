
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

<body>
 
<%String email=(String)session.getAttribute("email");
  %>
  <!--  String password=(String)session.getAttribute("password");  -->
 <% %> 
<%String title=request.getParameter("title");
  String company=request.getParameter("company");
  String jtype=request.getParameter("jtype");
  String date=request.getParameter("date");
  String skills=request.getParameter("skills");
  String jcity=request.getParameter("jcity");
  String jdescription=request.getParameter("Jdescription");%>
  
  <% Job j=new Job(title,company,jtype,date,skills,jcity,jdescription);
     CampusDao cd=new CampusDao();
     int a=cd.addjob(j);
     if(a>0)
     {%>
     <%request.setAttribute("msg1", "Company Added Successfully!");
	 %>
    <%request.getRequestDispatcher("addJobForm.jsp").forward(request, response);
    	//out.print("Job Added Successfully!!"); 
    	//RequestDispatcher d=request.getRequestDispatcher("addJobForm.jsp");d.forward(request, response);
     }
     else
     {
       out.print("Error!! Data Not inserted ....");
     }
     %>
     
</body>
</html>