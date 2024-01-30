<%@page import="model.CampusDao"%>
<%@page import="model.Applicant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String email=(String)session.getAttribute("email");%>
<% 
int id=Integer.parseInt(request.getParameter("id"));
System.out.println("Pass Id :"+id);
String aname=request.getParameter("aname");
String aemail=request.getParameter("aemail");
String cno=request.getParameter("cno");
String ccity=request.getParameter("ccity");
String astate=request.getParameter("astate");
String acountry=request.getParameter("acountry");
String add=request.getParameter("add");
String adate=request.getParameter("adate");
String qualification=request.getParameter("qualification");
Applicant ap=new Applicant(id,aname, aemail,cno, ccity, astate, acountry, add, adate, qualification);
CampusDao cd=new CampusDao();
int a=cd.updateApp(ap);
if(a>0){
	request.setAttribute("msg1", "Updated Successfully!");
	request.getRequestDispatcher("editAppForm.jsp").forward(request, response);
	
	out.print("Data Updated Successfully!!");
}
else{
	out.print("Data Not Updated!!");
}
%>
</body>
</html>