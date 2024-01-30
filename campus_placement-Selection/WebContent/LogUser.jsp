<%@page import="model.CampusDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String email=request.getParameter("email");
  String password=request.getParameter("password");
  %>
  <%session.setAttribute("email", email);
  %>
  
  <%--<%String msg5=(String) request.getAttribute("msg5");
<%if(msg5!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg5%></div>
<%}%>--%>
 // session.setAttribute("password", password);
 <% 
  boolean a;
  a=new CampusDao().checkuser(email,password);
  if(a)
	{

		out.print("Visit Profile");
		request.getRequestDispatcher("profile").forward(request, response);
		
		}
		else{
		out.print("visit register");
		request.getRequestDispatcher("registration.html").forward(request,response);
		}
		%>
		
		
</body>
</html>