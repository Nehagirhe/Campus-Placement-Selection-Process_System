<%@page import="model.ImageTblDao"%>
<%@page import="model.CampusDao"%>
<%@page import="model.Company"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--<% String cemail=(String)session.getAttribute("email");--%>
 <%--<%String cemail=(String)session.getAttribute("cemail");
  --%>
  <%HttpSession h1=request.getSession();
	String cemail=(String) h1.getAttribute("cemail"); %>
	
<%String imagename=request.getParameter("logo");%>
<%Company c=new Company(imagename,cemail);
  ImageTblDao cd=new ImageTblDao();
  int a=cd.saveName(imagename, cemail);
  if(a>0)
	  out.print("added successfully");
  else
	  out.print("not added");
  %>
  
</body>
</html>