
<%@page import="model.User"%>
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

<%
String email=(String)session.getAttribute("email");
//String password=(String)session.getAttribute("password");
String password=request.getParameter("newpass");
User u=new User(email,password);
CampusDao c=new CampusDao();
int a=c.changep(u);

if(a>0){
	request.setAttribute("msg", "Password Change Successfully!");
	request.getRequestDispatcher("Cpass.jsp").forward(request, response);
	//out.print("Change Password Successfully");
}
else{
	out.print("Password Not Change!!");
}
	%>
	
	</body>
</html>