package model;

public class Job {
private int id;
private String title;
private String company;
private String jtype;
private String date;
private String skills;
private String jcity;
private String jdescription;

public Job() {
	super();
}
public Job(int id, String title, String company, String jtype, String date, String skills, String jcity,
		String jdescription) {
	super();
	this.id = id;
	this.title = title;
	this.company = company;
	this.jtype = jtype;
	this.date = date;
	this.skills = skills;
	this.jcity = jcity;
	this.jdescription = jdescription;
}
public Job(String title, String company, String jtype, String date, String skills, String jcity, String jdescription) {
	super();
	this.title = title;
	this.company = company;
	this.jtype = jtype;
	this.date = date;
	this.skills = skills;
	this.jcity = jcity;
	this.jdescription = jdescription;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getJtype() {
	return jtype;
}
public void setJtype(String jtype) {
	this.jtype = jtype;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getSkills() {
	return skills;
}
public void setSkills(String skills) {
	this.skills = skills;
}
public String getJcity() {
	return jcity;
}
public void setJcity(String jcity) {
	this.jcity = jcity;
}
public String getJdescription() {
	return jdescription;
}
public void setJdescription(String jdescription) {
	this.jdescription = jdescription;
}

public Job(String company, String jtype, String date, String skills) {
	super();
	this.company = company;
	this.jtype = jtype;
	this.date = date;
	this.skills = skills;
}
public Job(int id, String company, String jtype, String date, String skills) {
	super();
	this.id = id;
	this.company = company;
	this.jtype = jtype;
	this.date = date;
	this.skills = skills;
}
@Override
public String toString() {
	return "Job [id=" + id + ", title=" + title + ", company=" + company + ", jtype=" + jtype + ", date=" + date
			+ ", skills=" + skills + ", jcity=" + jcity + ", jdescription=" + jdescription + "]";
}


}
