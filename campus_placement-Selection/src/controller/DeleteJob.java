package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CampusDao;

/**
 * Servlet implementation class DeleteJob
 */
@WebServlet("/deletejob")
public class DeleteJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	
	int id=Integer.parseInt(request.getParameter("id"));
	int a;
	try {
		a=new CampusDao().deletej(id);
		if(a>0)
		{
			request.setAttribute("msg1", "Deleted Successfully!");
			request.getRequestDispatcher("ReportJob.jsp").forward(request, response);
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
