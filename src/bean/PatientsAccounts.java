package bean;

public class PatientsAccounts {
	private int pid;
	private String password;
	
	public PatientsAccounts(int pid, String password) {
		super();
		this.pid = pid;
		this.password = password;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
