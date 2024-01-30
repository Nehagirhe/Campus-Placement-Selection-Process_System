package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.ImageTblDao;


@MultipartConfig
@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Upload2() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession h=request.getSession();
		String cemail=(String) h.getAttribute("cemail");
		System.out.println("Session email : "+cemail);
		Part file=request.getPart("logo");
		String imageFileName=getSubmittedFileName(file);
		System.out.println("Image file name : "+imageFileName);
		String uploadPath="C:\\Users\\Neha\\workspace\\campus_placement-Selection\\WebContent\\upload\\"+imageFileName;
		System.out.println("Image name: "+imageFileName);
		System.out.println("Path: "+uploadPath);
		
		try{
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		//database code
		int x;
		try {
			x=new ImageTblDao().saveName(imageFileName, cemail);
			if(x>0){
				request.setAttribute("msg1", "Company Added Successfully!");
				request.getRequestDispatcher("viewcomp.jsp").forward(request, response);				
				System.out.println("Image Name Inserted");
			 }
			else
			{
			    System.out.println("Image Name Not Inserted");
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		//Show Uploaded Image On Page
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<img src="+uploadPath+"alt='Uploaded Image'>");
	}


	private static String getSubmittedFileName(Part part) {
		// TODO Auto-generated method stub
		System.out.println(part);
		for (String cd:part.getHeader("content-disposition").split(";")){
			if(cd.trim().startsWith("filename")){
				String fileName=cd.substring(cd.indexOf('=')+1).trim().replace("\"","");
			return 
			fileName.substring(fileName.lastIndexOf('/')+1).substring(fileName.lastIndexOf('\\')+1);//MSIE fix
			}
		}
		return null;
	}

}
