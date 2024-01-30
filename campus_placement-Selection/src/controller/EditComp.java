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
import model.Company;

@WebServlet("/editcomp")
public class EditComp extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EditComp() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
PrintWriter out=response.getWriter();

int id=Integer.parseInt(request.getParameter("id"));
String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String cno=request.getParameter("cno");
String website=request.getParameter("website");
String city=request.getParameter("city");
String state=request.getParameter("state");
String add=request.getParameter("add");
String description=request.getParameter("description");
Company c=new Company(id,cname,cemail,cno,website,city,state,add,description);
CampusDao cd=new CampusDao();
int a;
try {
	a = cd.updatecom(c);
	if(a>0){
		//request.setAttribute("msg4", "Updated Successfully!");
		//request.getRequestDispatcher("editComForm.jsp").forward(request, response);
		request.getRequestDispatcher("logof.jsp").forward(request, response);
		//out.print("updated successfully!");
	}
		else
			out.print("not updated");
			

} catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
