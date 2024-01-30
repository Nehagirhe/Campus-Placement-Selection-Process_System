package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CampusDao;
import model.Job;

@WebServlet("/adjob")
public class AddJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	
	  String title=request.getParameter("title");
	  String company=request.getParameter("company");
	  String jtype=request.getParameter("jtype");
	  String date=request.getParameter("date");
	  String skills=request.getParameter("skills");
	  String jcity=request.getParameter("jcity");
	  String Jdescription=request.getParameter("Jdescription");

	  //Job j=new Job(title,company,jtype,date,skills,jcity,jdescription);
	  Job j=new Job(title, company, jtype, date, skills, jcity, Jdescription);
	  CampusDao cd=new CampusDao();
	  
	  
	  
	  try {
		int a=cd.addjob(j);
		if(a>0)
	     {
			
			request.setAttribute("msg1", "Job Added Successfully!");
			
	    	//out.print("Job Added Successfully!!"); 
	    	//RequestDispatcher d=request.getRequestDispatcher("adminNav.html");
	    	//d.include(request, response);
			RequestDispatcher d=request.getRequestDispatcher("addjobForm.jsp");
	    	d.forward(request, response);
	    	
	    	
	     }
	     else{
	    	 out.print("Error!! Data Not inserted ....");
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
