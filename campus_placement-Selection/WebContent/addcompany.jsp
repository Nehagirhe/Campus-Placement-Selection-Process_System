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

<%String email=(String)session.getAttribute("email");
%>

<!--  String password=(String)session.getAttribute("password");  -->

<%
 String cname=request.getParameter("cname");
 String cemail=request.getParameter("cemail");
 String cno=request.getParameter("cno");
 String website=request.getParameter("website");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String address=request.getParameter("address");
 String description=request.getParameter("description");
 //String imagename=request.getParameter("logo");
 //company logo
 %>
 <%HttpSession h=request.getSession();
	h.setAttribute("cemail", cemail);%>
 <%
 Company c=new Company(cname,cemail,cno,website,city,state,address,description);
 CampusDao cd=new CampusDao();
 int a=cd.addcom(c);
 if(a>0)
 { 
 %>
 request.setAttribute("msg", "Added Successfully!"); 
 
 <% request.getRequestDispatcher("logof.jsp").forward(request, response);
 %>	
  <%-- out.print("Company Added Successfully!!"); --%>
 <%}
 else
 {
    out.print("Company Not Added!!");
 }
 //response.sendRedirect("logof.jsp");
%>

</body>
</html>