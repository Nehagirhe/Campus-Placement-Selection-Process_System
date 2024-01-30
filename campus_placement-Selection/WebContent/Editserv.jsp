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

<% 
String email=(String)session.getAttribute("email");
%>
<%int id=Integer.parseInt(request.getParameter("id"));
String title=request.getParameter("title");
String company=request.getParameter("company");
String jtype=request.getParameter("jtype");
String date=request.getParameter("date");
String skills=request.getParameter("skills");
String jcity=request.getParameter("jcity");
String jdescription=request.getParameter("jdescription");

Job j=new Job(id,title,company,jtype,date,skills,jcity,jdescription);
CampusDao cd=new CampusDao();
int a=cd.update(j);
if(a>0)
{
	request.setAttribute("msg1", "Job Updated Successfully!");
	request.getRequestDispatcher("EditJob.jsp").forward(request, response);
	//out.print("Data Updated Successfully!!");
}
else
{
out.print("Data Not Updated !!");
}
%>
</body>
</html>