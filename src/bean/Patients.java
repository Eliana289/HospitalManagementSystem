package bean;

public class Patients {
	private int pid;
	private String name;
	private String address;
	private String gender;
	private String dob;
	private int age;
	private String disease;
	private String registDate;
	private String status;
	private String phoneNo;
	private String emailNo;
	private String notes;

	public Patients(int pid, String name, String address, String gender, String dob, int age, String disease,
			String registDate, String status, String phoneNo, String emailNo, String notes) {
		super();
		this.pid = pid;
		this.name = name;
		this.address = address;
		this.gender = gender;
		this.dob = dob;
		this.age = age;
		this.disease = disease;
		this.registDate = registDate;
		this.status = status;
		this.phoneNo = phoneNo;
		this.emailNo = emailNo;
		this.notes = notes;
	}

	public Patients(int pid, String name, String address, String gender, String dob, int age, String registDate,
			String status, String phoneNo, String emailNo) {
		super();
		this.pid = pid;
		this.name = name;
		this.address = address;
		this.gender = gender;
		this.dob = dob;
		this.age = age;
		this.registDate = registDate;
		this.status = status;
		this.phoneNo = phoneNo;
		this.emailNo = emailNo;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getRegistDate() {
		return registDate;
	}

	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
