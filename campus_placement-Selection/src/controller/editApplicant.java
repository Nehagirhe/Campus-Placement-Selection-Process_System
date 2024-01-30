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
import javax.servlet.http.HttpSession;

import model.Applicant;
import model.CampusDao;

@WebServlet("/editapplicant")
public class editApplicant extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public editApplicant() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("adminNav.html").forward(request, response);

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String aname=request.getParameter("aname");
		String aemail=request.getParameter("aemail");
		String cno=request.getParameter("cno");
		String ccity=request.getParameter("ccity");
		String astate=request.getParameter("astate");
		String acountry=request.getParameter("acountry");
		String add=request.getParameter("add");
		String adate=request.getParameter("adate");
		String qualification=request.getParameter("qualification");
		
		Applicant ap=new Applicant(id,aname,aemail,cno,ccity,astate,acountry,add,adate,qualification);
		CampusDao cd=new CampusDao();
		
		try {
			int a=cd.updateApp(ap);
			if(a>0){
				out.print("Data Updated");
			}
			else{
				out.print("Data Not Updated");
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
