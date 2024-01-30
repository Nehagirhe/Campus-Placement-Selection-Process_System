package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Applicant;
import model.CampusDao;

@WebServlet("/addapplicants")
public class AddApplicants extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddApplicants() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	
	String aname=request.getParameter("aname");
	String cno=request.getParameter("cno");
	String aemail=request.getParameter("aemail");
	String ccity=request.getParameter("ccity");
	String astate=request.getParameter("astate");
	String acountry=request.getParameter("acountry");
	String add=request.getParameter("add");
	String adate=request.getParameter("adate");
	String qualification=request.getParameter("qualification");
	Applicant a=new Applicant(aname,aemail,cno,ccity, astate, acountry, add, adate,qualification);
	CampusDao d=new CampusDao();
	try {
		int b=d.apply(a);
		if(b>0){
			request.setAttribute("msg3", "Apply Successfully!");
			request.getRequestDispatcher("applyForm.jsp").forward(request, response);
			out.print("apply successfully!!");
		}
		else{
			out.print("please try again");
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
