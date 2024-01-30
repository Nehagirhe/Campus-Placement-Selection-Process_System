package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	response.setContentType("text/html");
    PrintWriter out=response.getWriter();
    
    out.print("Welcome to Profile");
    
    HttpSession h=request.getSession();
   String email=(String) h.getAttribute("email");
   String password=(String) h.getAttribute("password");
   if(email.equals("admin23@gmail.com")){
   RequestDispatcher d=request.getRequestDispatcher("home1.jsp");
   d.forward(request, response);
   }
   else{
	   RequestDispatcher d=request.getRequestDispatcher("UserHome.jsp");
	   d.forward(request, response);   
   }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
