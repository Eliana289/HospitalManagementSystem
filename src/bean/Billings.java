package bean;

public class Billings {
	private int bid;
	private int pid;
	private String amount;
	private String createdDate;
	private String dueDate;
	//completed uncompleted
	private String status;
	
	public Billings(int bid, int pid, String amount, String createdDate, String dueDate, String status) {
		super();
		this.bid = bid;
		this.pid = pid;
		this.amount = amount;
		this.createdDate = createdDate;
		this.dueDate = dueDate;
		this.status = status;
	}
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
