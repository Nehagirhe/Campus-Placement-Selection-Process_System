package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProfileDao {

	private String db="campus";
	private String url="jdbc:mysql://localhost:3308/"+db;
	private String uname="root";
	private String pass="abc123";
	private Connection con;

	private Connection getConnection() throws ClassNotFoundException, SQLException 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,uname,pass);
		return con;		
	}
	public int saveName(Applicant a) throws ClassNotFoundException, SQLException{
		String sql="update app_tbl set imagename=? where email=?";
		PreparedStatement ps=getConnection().prepareStatement(sql);
		ps.setString(1, a.getImagename());
		ps.setString(2, a.getAemail());
		int x= ps.executeUpdate();
		return x;
		
	}
}
