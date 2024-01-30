package model;

public class Applicant {
private int id;
private String aname;
private String aemail;
private String cno;
private String ccity;
private String astate;
private String acountry;
private String add;
private String adate;
private String qualification;
private String imagename;


public String getImagename() {
	return imagename;
}
public void setImagename(String imagename) {
	this.imagename = imagename;
}
public Applicant(int id, String aname, String aemail, String cno, String ccity, String astate, String acountry,
		String add, String adate, String qualification, String imagename) {
	super();
	this.id = id;
	this.aname = aname;
	this.aemail = aemail;
	this.cno = cno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
	this.qualification = qualification;
	this.imagename = imagename;
}
public String getAemail() {
	return aemail;
}
public void setAemail(String aemail) {
	this.aemail = aemail;
}
public Applicant(String aname, String aemail, String cno, String ccity, String astate, String acountry, String add,
		String adate, String qualification) {
	super();
	this.aname = aname;
	this.aemail = aemail;
	this.cno = cno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
	this.qualification = qualification;
}
public Applicant(int id, String aname, String aemail, String cno, String ccity, String astate, String acountry,
		String add, String adate, String qualification) {
	super();
	this.id = id;
	this.aname = aname;
	this.aemail = aemail;
	this.cno = cno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
	this.qualification = qualification;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
/*public Applicant(String aname, String acno, String ccity, String astate, String acountry, String add, String adate,
		String qualification) {
	super();
	this.aname = aname;
	this.acno = acno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
	this.qualification = qualification;
}
public Applicant(int id, String aname, String acno, String ccity, String astate, String acountry, String add,
		String adate, String qualification) {
	super();
	this.id = id;
	this.aname = aname;
	this.acno = acno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
	this.qualification = qualification;
}*/
public Applicant(int id, String aname, String cno, String ccity, String astate, String acountry, String add,
		String adate) {
	super();
	this.id = id;
	this.aname = aname;
	this.cno = cno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
}
public Applicant(String aname, String cno, String ccity, String astate, String acountry, String add, String adate) {
	super();
	this.aname = aname;
	this.cno = cno;
	this.ccity = ccity;
	this.astate = astate;
	this.acountry = acountry;
	this.add = add;
	this.adate = adate;
}
public Applicant() {
	super();
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAname() {
	return aname;
}
public void setAname(String aname) {
	this.aname = aname;
}
public String getCno() {
	return cno;
}
public void setCno(String cno) {
	this.cno = cno;
}
public String getCcity() {
	return ccity;
}
public void setCcity(String ccity) {
	this.ccity = ccity;
}
public String getAstate() {
	return astate;
}
public void setAstate(String astate) {
	this.astate = astate;
}
public String getAcountry() {
	return acountry;
}
public void setAcountry(String acountry) {
	this.acountry = acountry;
}
public String getAdd() {
	return add;
}
public void setAdd(String add) {
	this.add = add;
}
public String getAdate() {
	return adate;
}
public void setAdate(String adate) {
	this.adate = adate;
}
@Override
public String toString() {
	return "Applicant [id=" + id + ", aname=" + aname + ", aemail=" + aemail + ", cno=" + cno + ", ccity=" + ccity
			+ ", astate=" + astate + ", acountry=" + acountry + ", add=" + add + ", adate=" + adate + ", qualification="
			+ qualification + "]";
}



}
