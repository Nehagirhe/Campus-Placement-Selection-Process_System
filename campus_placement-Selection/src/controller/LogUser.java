package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CampusDao;

@WebServlet("/loguser")
public class LogUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//String urole=request.getParameter("urole");
		
		HttpSession h=request.getSession();
		h.setAttribute("email", email);
		h.setAttribute("password", password);
		
		
		boolean a; 
		try {
			a=new CampusDao().checkuser(email,password);
			if(a)
				{
	
					out.print("Visit Profile");
					request.getRequestDispatcher("profile").forward(request, response);
					}
					else{
					out.print("visit register");
					request.getRequestDispatcher("reg").forward(request,response);
				
					}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
