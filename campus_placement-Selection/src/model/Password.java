package model;

public class Password {
private int id;
private String oldpass;
private String newpass;
private String cpass;
public Password() {
	super();
}
public Password(int id, String oldpass, String newpass, String cpass) {
	super();
	this.id = id;
	this.oldpass = oldpass;
	this.newpass = newpass;
	this.cpass = cpass;
}
public Password(String oldpass, String newpass, String cpass) {
	super();
	this.oldpass = oldpass;
	this.newpass = newpass;
	this.cpass = cpass;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getOldpass() {
	return oldpass;
}
public void setOldpass(String oldpass) {
	this.oldpass = oldpass;
}
public String getNewpass() {
	return newpass;
}
public void setNewpass(String newpass) {
	this.newpass = newpass;
}
public String getCpass() {
	return cpass;
}
public void setCpass(String cpass) {
	this.cpass = cpass;
}
@Override
public String toString() {
	return "Password [id=" + id + ", oldpass=" + oldpass + ", newpass=" + newpass + ", cpass=" + cpass + "]";
}

}
