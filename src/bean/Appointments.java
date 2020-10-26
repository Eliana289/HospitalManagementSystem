package bean;

public class Appointments {
	private int aid;
	private int pid;
	private int did;
	private String date;
	private String room;
	private String doctor;
	// "submitted" "ongoing" "completed"
	private String status;
	
	public Appointments(int aid, int pid, int did, String date, String room, String doctor, String status) {
		super();
		this.aid = aid;
		this.pid = pid;
		this.did = did;
		this.date = date;
		this.room = room;
		this.doctor = doctor;
		this.status = status;
	}

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
