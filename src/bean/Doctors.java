package bean;

public class Doctors {
	private String name;
	
	private int workid;
	private String title;
	//Valid / Invalid
	private String certificate;
	
	private String officeTime;
	private String room;
	private String department;
	private String speciality;
	private int checkupFee;
	private String phoneNo;
	private String emailNo;

	public Doctors(String name, int workid, String title, String certificate, String officeTime, String room,
			String department, String speciality, int checkupFee, String phoneNo, String emailNo) {
		super();
		this.name = name;
		this.workid = workid;
		this.title = title;
		this.certificate = certificate;
		this.officeTime = officeTime;
		this.room = room;
		this.department = department;
		this.speciality = speciality;
		this.checkupFee = checkupFee;
		this.phoneNo = phoneNo;
		this.emailNo = emailNo;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getWorkid() {
		return workid;
	}
	public void setWorkid(int workid) {
		this.workid = workid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getOfficeTime() {
		return officeTime;
	}
	public void setOfficeTime(String officeTime) {
		this.officeTime = officeTime;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public int getCheckupFee() {
		return checkupFee;
	}
	public void setCheckupFee(int checkupFee) {
		this.checkupFee = checkupFee;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmailNo() {
		return emailNo;
	}
	public void setEmailNo(String emailNo) {
		this.emailNo = emailNo;
	}
	
	

}
