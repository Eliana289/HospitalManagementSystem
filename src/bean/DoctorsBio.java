package bean;

public class DoctorsBio {
	private String name;
	private String gender;
	private String dob;
	private int age;
	private String address;
	private String startDate;
	private int workid;
	
	public DoctorsBio(String name, String gender, String dob, int age, String address, String startDate, int workid) {
		super();
		this.name = name;
		this.gender = gender;
		this.dob = dob;
		this.age = age;
		this.address = address;
		this.startDate = startDate;
		this.workid = workid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public int getWorkid() {
		return workid;
	}
	public void setWorkid(int workid) {
		this.workid = workid;
	}
	
	
}
