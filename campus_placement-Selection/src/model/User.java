package model;

public class User {
private int id;
private String fname;
private String lname;
private String email;
private String password;
private String mobile;




public User(String email, String password) {
	super();
	this.email = email;
	this.password = password;
}
/*public User(String fname, String mobile) {
	super();
	this.fname = fname;
	this.mobile = mobile;
} */
public User(String fname, String email, String mobile) {
	super();
	this.fname = fname;
	this.email = email;
	this.mobile = mobile;
}
public User(int id, String fname, String email, String mobile) {
	super();
	this.id = id;
	this.fname = fname;
	this.email = email;
	this.mobile = mobile;
}
public User(int id, String fname, String lname, String email, String password, String mobile) {
	super();
	this.id = id;
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.password = password;
	this.mobile = mobile;
}
public User(String fname, String lname, String email, String password, String mobile) {
	super();
	this.fname = fname;
	this.lname = lname;	
	this.email = email;
	this.password = password;
	this.mobile = mobile;

}


public User() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
@Override
public String toString() {
	return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password=" + password
			+ ", mobile=" + mobile + "]";
}


}
