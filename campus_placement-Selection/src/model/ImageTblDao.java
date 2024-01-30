package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImageTblDao {

	private String db="campus";
	private String url="jdbc:mysql://localhost:3308/"+db;
	private String uname="root";
	private String pass="abc123";
	private Connection con;
	
	private Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,uname,pass);
		return con;
	}
	public int saveName(String imagename,String cemail) throws ClassNotFoundException, SQLException {
		String sql="update company_tbl set imagename=? where cemail=?";
		PreparedStatement ps=getConnection().prepareStatement(sql);
		ps.setString(1,imagename);
		ps.setString(2,cemail);
		System.out.println("imageName= "+imagename);
		System.out.println("Email= "+cemail);
		System.out.println("Execute= "+ps.executeUpdate());
		return ps.executeUpdate();
	}
	
	public List<Company> getAllImage() throws ClassNotFoundException, SQLException{
		String sql="SELECT * FROM company_tbl";
		PreparedStatement ps=getConnection().prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		List<Company>imageList=new ArrayList<Company>();
		while(rs.next())
		{
			Company it =new Company();
			it.setId(rs.getInt(1));
			it.setCname(rs.getString(2));
			it.setCemail(rs.getString(3));
			it.setCno(rs.getString(4));
			it.setWebsite(rs.getString(5));
			it.setCity(rs.getString(6));
			it.setState(rs.getString(7));
			it.setAddress(rs.getString(8));
			it.setDescription(rs.getString(9));
			it.setImagename(rs.getString(10));
			imageList.add(it);
		}
		
		// it.setImagename(rs.getString(10)); // Include imagename in the result set
      //  imageList.add(it);
		
		return imageList;
	}
	
}
