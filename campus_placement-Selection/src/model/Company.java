package model;

public class Company {
private int id;
private String cname;
private String cemail;
private String cno;
private String website;
private String city;
private String state;
private String address;
private String description;
private String imagename;
public Company() {
	super();
}


public Company(String imagename) {
	super();
	this.imagename = imagename;
}


public Company(String cemail, String imagename) {
	super();
	this.cemail = cemail;
	this.imagename = imagename;
}


public Company(int id, String cname, String cemail, String cno, String website, String city, String state,
		String address, String description, String imagename) {
	super();
	this.id = id;
	this.cname = cname;
	this.cemail = cemail;
	this.cno = cno;
	this.website = website;
	this.city = city;
	this.state = state;
	this.address = address;
	this.description = description;
	this.imagename = imagename;
}

public Company(String cname, String cemail, String cno, String website, String city, String state, String address,
		String description, String imagename) {
	super();
	this.cname = cname;
	this.cemail = cemail;
	this.cno = cno;
	this.website = website;
	this.city = city;
	this.state = state;
	this.address = address;
	this.description = description;
	this.imagename = imagename;
}


public Company(int id, String cname, String cemail, String cno, String website, String city, String state,
		String address, String description) {
	super();
	this.id = id;
	this.cname = cname;
	this.cemail = cemail;
	this.cno = cno;
	this.website = website;
	this.city = city;
	this.state = state;
	this.address = address;
	this.description = description;
}

public Company(String cname, String cemail, String cno, String website, String city, String state, String address,
		String description) {
	super();
	this.cname = cname;
	this.cemail = cemail;
	this.cno = cno;
	this.website = website;
	this.city = city;
	this.state = state;
	this.address = address;
	this.description = description;
}

public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getImagename() {
	return imagename;
}


public void setImagename(String imagename) {
	this.imagename = imagename;
}


public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCemail() {
	return cemail;
}
public void setCemail(String cemail) {
	this.cemail = cemail;
}
public String getCno() {
	return cno;
}
public void setCno(String cno) {
	this.cno = cno;
}
public String getWebsite() {
	return website;
}
public void setWebsite(String website) {
	this.website = website;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
@Override
public String toString() {
	return "Company [cname=" + cname + ", cemail=" + cemail + ", cno=" + cno + ", website=" + website + ", city=" + city
			+ ", state=" + state + ", address=" + address + ", description=" + description + "]";
}


}
