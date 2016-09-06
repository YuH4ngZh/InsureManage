package model;

public class Contract {
	private int id;
	private int userid;
	private String insurename;
	private String applicant;
	private String insured;
	private String insuredid;
	private String mobile;
	private String location;
	private String begindate;
	private String enddate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getInsurename() {
		return insurename;
	}
	public void setInsurename(String insurename) {
		this.insurename = insurename;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public String getInsured() {
		return insured;
	}
	public void setInsured(String insured) {
		this.insured = insured;
	}
	public String getInsuredid() {
		return insuredid;
	}
	public void setInsuredid(String insuredid) {
		this.insuredid = insuredid;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getBegindate() {
		return begindate;
	}
	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
}
