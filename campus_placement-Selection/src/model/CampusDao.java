package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CampusDao {
Connection getConnect() throws ClassNotFoundException, SQLException
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/campus","root","abc123");
	return con;
}
public int insert(User u) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("insert into user_tbl (fname,lname,email,password,mobile) values (?,?,?,?,?)");
	st.setString(1, u.getFname());
	st.setString(2, u.getLname());
	st.setString(3, u.getEmail());
	st.setString(4, u.getPassword());
	st.setString(5, u.getMobile());
	
	int a=st.executeUpdate();
	con.close();
	return a;	
}

public boolean checkuser(String email,String password) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	String sql="SELECT * FROM user_tbl where email=? and password=?";
	 try (PreparedStatement st = con.prepareStatement(sql)) {
         st.setString(1, email);
         st.setString(2, password);

         try (ResultSet rs = st.executeQuery()) {
             boolean a = rs.next(); 
             return a;
         }
     }
}

public int addjob(Job j) throws ClassNotFoundException, SQLException{
	Connection con =getConnect();
	PreparedStatement st=con.prepareStatement("insert into job_tbl(title,compname,job_type,date,skills,city,description) values (?,?,?,?,?,?,?)");
	st.setString(1, j.getTitle());
	st.setString(2, j.getCompany());
	st.setString(3, j.getJtype());
	st.setString(4, j.getDate());
	st.setString(5, j.getSkills());
	st.setString(6, j.getJcity());
	st.setString(7, j.getJdescription());
	int a=st.executeUpdate();
	con.close();
	return a;
}

public int addcom(Company c) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("insert into company_tbl(cname,cemail,contact_no,website,city,state,address,description)values(?,?,?,?,?,?,?,?)");
    st.setString(1, c.getCname());
    st.setString(2, c.getCemail());
    st.setString(3, c.getCno());
    st.setString(4, c.getWebsite());
    st.setString(5, c.getCity());
    st.setString(6, c.getState());
    st.setString(7, c.getAddress());
    st.setString(8, c.getDescription());
    //st.setString(9, c.getImagename());
	int a=st.executeUpdate();
	con.close();
	return a;
}
public int adlogo(Company c) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("update company_tbl set imagename=? where cemail=?");
	st.setString(1, c.getImagename());
	st.setString(2, c.getCemail());
	int a=st.executeUpdate();
	con.close();
	return a;
}
public ArrayList<Job> ViewAlljobs() throws ClassNotFoundException, SQLException {
		Connection con=getConnect();
		String sql="select * from job_tbl";
		PreparedStatement st=con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		ArrayList<Job> al1=new ArrayList<>();
		while(rs.next()){
		Job j =new Job(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
		al1.add(j);
				
		}
		con.close();
		return al1;
	}

    public int update(Job j) throws ClassNotFoundException, SQLException {
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("update job_tbl set title=?, compname=?, job_type=?, date=?, skills=?, city=?, description=? where id=?");
	st.setString(1, j.getTitle());
	st.setString(2, j.getCompany());
	st.setString(3, j.getJtype());
	st.setString(4, j.getDate());
	st.setString(5, j.getSkills());
	st.setString(6, j.getJcity());
	st.setString(7, j.getJdescription());
	st.setInt(8, j.getId());
	
	int a=st.executeUpdate();
	con.close();
	return a;
}
	public int deletej(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnect();
		PreparedStatement st=con.prepareStatement("delete from job_tbl where id=?");
		st.setInt(1, id);
		int a=st.executeUpdate();
		con.close();
		return a;
	}
	
	public ArrayList<Job> viewDetails() throws ClassNotFoundException, SQLException 
		{
			Connection con=getConnect();
			String sql="SELECT * FROM job_tbl";
			PreparedStatement st=con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			ArrayList<Job> al2=new ArrayList<>();
			while(rs.next()){
			Job j=new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
			al2.add(j);
			}
			con.close();
			return al2;
		}
		

	public ArrayList<Job> viewJob()throws ClassNotFoundException, SQLException 
		{
			Connection con=getConnect();
			String sql="SELECT * FROM job_tbl";
			PreparedStatement st=con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			ArrayList<Job> al2=new ArrayList<>();
			while(rs.next()){
			Job j=new Job(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			al2.add(j);
			}
			con.close();
			return al2;
		}
	public int apply(Applicant a) throws ClassNotFoundException, SQLException {
		Connection con=getConnect();
		PreparedStatement st=con.prepareStatement("insert into app_tbl (name,email,contact_no,city,state,country,address,date,qualification) values (?,?,?,?,?,?,?,?,?)");
		st.setString(1, a.getAname());
		st.setString(2, a.getAemail());
		st.setString(3, a.getCno());
		st.setString(4, a.getCcity());
		st.setString(5, a.getAstate());
		st.setString(6, a.getAcountry());
		st.setString(7, a.getAdd());
		st.setString(8, a.getAdate());
		st.setString(9, a.getQualification());
		int b=st.executeUpdate();
		con.close();
		return b;
	}
	
	public ArrayList<Applicant>ViewApplicants() throws ClassNotFoundException, SQLException{
		Connection con=getConnect();
		String sql="SELECT * FROM app_tbl";
		PreparedStatement st=con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		ArrayList<Applicant> al2=new ArrayList<>();
		while(rs.next()){
		Applicant a=new Applicant(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
		al2.add(a);
		}
		return al2;
		
	}
	public ArrayList<Company>ViewCompany() throws ClassNotFoundException, SQLException{
		Connection con=getConnect();
		String sql="Select * from company_tbl";
		PreparedStatement st=con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		ArrayList<Company> al3=new ArrayList<>();
		while(rs.next()){
			Company a=new Company(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
		    al3.add(a);
		}
		return al3;
	}
	
	/*public int changep(String email,String password ) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	String sql=("select * from user_tbl where email='"+email+"'and password='"+password+"'");
	try(PreparedStatement st=con.prepareStatement(sql)){
		st.setString(1, email);
		st.setString(2, password);
		
		try(ResultSet rs=st.executeQuery()){
			boolean a=rs.next();
			return a;
		}
			
	}
	}*/
	public int changep(User u) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("update user_tbl set password=? where email=?");
	st.setString(2, u.getEmail());
	st.setString(1, u.getPassword());
	int a=st.executeUpdate();
	con.close();
	return a;
	}
	
	public Job getOneJob(int id) throws ClassNotFoundException, SQLException{
		Connection con=getConnect();
		String sql="SELECT * FROM job_tbl where id=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1,id);
		ResultSet rs=st.executeQuery();
		Job j=null;
		while(rs.next())
		{
		j=new Job(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));		
		}
		con.close();
		return j;
		
	}
	public int updateApp(Applicant ap) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnect();
		PreparedStatement st=con.prepareStatement("update app_tbl set name=?, email=?, contact_no=?, city=?, state=?, country=?, address=?, date=?, qualification=? where id=?");
		st.setString(1, ap.getAname());
		st.setString(2, ap.getAemail());
		st.setString(3, ap.getCno());
		st.setString(4, ap.getCcity());
		st.setString(5, ap.getAstate());
		st.setString(6, ap.getAcountry());
		st.setString(7, ap.getAdd());
		st.setString(8, ap.getAdate());
		st.setString(9, ap.getQualification());
		st.setInt(10, ap.getId());
		int a=st.executeUpdate();
        con.close();
		return a;		
	}
public Applicant getOneApplicant(int id) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	String sql="SELECT * FROM app_tbl where id=?";
	PreparedStatement st=con.prepareStatement(sql);
	st.setInt(1, id);
	ResultSet rs=st.executeQuery();
	Applicant a=null;
	while(rs.next()){
		a=new Applicant(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
	}
	con.close();
	return a;
}
public User getOneUser(String email) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	String sql="SELECT * FROM user_tbl where email=?";
	PreparedStatement st=con.prepareStatement(sql);
	st.setString(1, email);
	ResultSet rs=st.executeQuery();
	User a=null;
	while(rs.next()){
	a=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
	}
	con.close();
	return a;
}
public Company getOneCompany(int id) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	String sql="Select * from company_tbl where id=?";
	PreparedStatement st=con.prepareStatement(sql);
	st.setInt(1, id);
	ResultSet rs=st.executeQuery();
	Company c=null;
	while(rs.next()){
		c=new Company(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
	}
	con.close();
	return c;
}
public int updateUser(User u) throws ClassNotFoundException, SQLException{
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("update user_tbl set fname=?,lname=?, password=?, mobile=?  where email=?");
	st.setString(1, u.getFname());
	st.setString(2, u.getLname());
	st.setString(3, u.getPassword());
	st.setString(4, u.getMobile());
	st.setString(5, u.getEmail());
	
	//st.setString(6, u.getEmail());
	int a=st.executeUpdate();
	con.close();
	return a;
}
public int updatecom(Company c) throws ClassNotFoundException, SQLException {
	Connection con=getConnect();
	PreparedStatement st=con.prepareStatement("update company_tbl set cname=?,contact_no=?,website=?,city=?,state=?,address=?,description=?,imagename=? where cemail=?");
	st.setString(1, c.getCname());
	st.setString(9, c.getCemail());
	st.setString(2, c.getCno());
	st.setString(3, c.getWebsite());
	st.setString(4, c.getCity());
	st.setString(5, c.getState());
	st.setString(6, c.getAddress());
	st.setString(7, c.getDescription());
	st.setString(8, c.getImagename());
	int a=st.executeUpdate();
	con.close();
	return a;
}
}		
	

	
	
	
