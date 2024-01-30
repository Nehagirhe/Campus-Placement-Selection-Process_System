<%@page import="model.CampusDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String email=(String)session.getAttribute("email"); %>
//int id=Integer.parseInt(request.getParameter("id"));
<%String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String password=request.getParameter("password");
String mobile=request.getParameter("mobile");%>
<%User u=new User(fname,lname,email,password,mobile);%>
<% CampusDao cd=new CampusDao();%>
<%int a=cd.updateUser(u);%>
<%if(a>0){%>
<% 
request.setAttribute("msg1", "Profile Updated Successfully!");
request.getRequestDispatcher("Profileform.jsp").forward(request, response);

//out.print("Profile Updated!");
}else{%>
<%out.print("Profile Not updated!");} %>
</body>
</html>