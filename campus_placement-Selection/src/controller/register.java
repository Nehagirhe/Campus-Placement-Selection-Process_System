package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.CampusDao;

@WebServlet("/reg")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     response.setContentType("text/html");
     PrintWriter out=response.getWriter();
     
     String fname=request.getParameter("fname");
     String lname=request.getParameter("lname");
     String email=request.getParameter("email");
     String password=request.getParameter("password");
     String mobile=request.getParameter("mobile");
     
     User u=new User(fname,lname,email,password,mobile);
     CampusDao d=new CampusDao();
      try {
		int a=d.insert(u);
		if(a>0){
			request.setAttribute("msg2", "User Registered Successfully!");
			request.getRequestDispatcher("loginjsp.jsp").forward(request, response);
			
		}
		else{
			out.print("Check Email or Password");
		}
	} 
      catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
