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

import model.Company;
import model.ImageTblDao;
@MultipartConfig
@WebServlet("/upload")
public class UploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    /*public UploadServ() {
        super();
        // TODO Auto-generated constructor stub
    }*/

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession h=request.getSession();
		String email=(String) h.getAttribute("email");
		//System.out.println("Email"+email);
		Part file=request.getPart("image");
		
		String imageFileName=getSubmittedFileName(file);
		String uploadPath="C:/Users/Neha/workspace/campus_placement-Selection/WebContent/upload/"+imageFileName;
		System.out.println("Image name : "+imageFileName);
		System.out.println("Path : "+uploadPath);
		try{
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		//try{
		//FileOutputStream fos=new FileOutputStream(uploadPath);
		//InputStream is=file.getInputStream();
		//byte[] data=new byte[is.available()];
		//is.read(data);
		//fos.write(data);
		//fos.close();
		//}
		//catch(Exception e){
		//	e.printStackTrace();
		//}
		
	
//DATABASE CODE
		//String cname=request.getParameter("cname");
		//String cemail=request.getParameter("cemail");
		//String cno=request.getParameter("cno");
		//String website=request.getParameter("website");
		//String city=request.getParameter("city");
		//String state=request.getParameter("state");
		//String address=request.getParameter("address");
		//String description=request.getParameter("description");
		
		//String imagename=request.getParameter("imagename");
		HttpSession h1=request.getSession();
		String cemail=(String) h1.getAttribute("cemail");
		
		//String cemail=request.getParameter("cemail");
		//Company c=new Company(imagename,cemail);
		//ImageTblDao i=new ImageTblDao();
		int a;
		try {
			a = new ImageTblDao().saveName(imageFileName,cemail);
			if(a>0){
				System.out.println("image uploaded successfully");
			}else{
				System.out.println("image not uploaded");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*try{
			//Company c=new Company(cname,cemail,cno,website,city,state,address,description,imagename);
		int x=new ImageTblDao().saveName(imageFileName,email);{
			if(x>0)
				System.out.println("imageName inserted");
			else
		System.out.println("imageName not inserted");			
		}
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}*/
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<img src='"+uploadPath+"' alt='Uploaded Image'>");		
	}	
	
	private static String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	 }
	return null;	
	}
	
	/*private static String getSubmittedFileName(Part part) {
	    String submittedFileName = null;
	    String contentDisposition = part.getHeader("content-disposition");

	    if (contentDisposition != null) {
	        for (String cd : contentDisposition.split(";")) {
	            if (cd.trim().startsWith("filename")) {
	                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	                submittedFileName = fileName.substring(fileName.lastIndexOf('/') + 1)
	                        .substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	                break;
	            }
	        }
	    }

	    return submittedFileName;
	}*/
	
	
}