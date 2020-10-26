package action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Appointments;
import bean.Doctors;
import bean.DoctorsBio;
import bean.Patients;
import bean.PatientsAccounts;

public class Dbmanager {
	static Connection con = Dbcon.getCon();
	
	public static List<Patients> selectAllPatientsData() {

		String sql = "select * from patients";
		List<Patients> availablePatients = new ArrayList<Patients>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Patients patients = resultSetToPatientsConvert(rs);
				availablePatients.add(patients);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availablePatients;
	}
	
	public static List<Patients> selectAdmittedPatients() {

		String sql = "select * from patients where status='Admitted'";
		List<Patients> availablePatients = new ArrayList<Patients>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Patients patients = resultSetToPatientsConvert(rs);
				availablePatients.add(patients);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availablePatients;
	}

	public static List<Patients> selectUnAdmittedPatients() {
		String sql = "select * from patients where status='Unadmitted'";
		List<Patients> availablePatients = new ArrayList<Patients>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Patients patients = resultSetToPatientsConvert(rs);
				availablePatients.add(patients);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availablePatients;
	}
	
	private static Patients resultSetToPatientsConvert(ResultSet result) throws SQLException {

		return new Patients(result.getInt("pid"), 
				result.getString("name"), 
				result.getString("address"),
				result.getString("gender"), 
				result.getString("dob"), 
				result.getInt("age"), 
				result.getString("disease"),
				result.getString("registDate"), 
				result.getString("status"), 
				result.getString("phoneNo"),
				result.getString("emailNo"), 
				result.getString("notes"));
	}

	public static Patients selectPatient(int id) {
		String sql = "select * from patients where pid="+Integer.toString(id);
		Patients patients = null;

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				patients = resultSetToPatientsConvert(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return patients;
	}

	public static boolean updatePatientsData(Patients patient, int pid) {
		String sql = "UPDATE patients SET name="+"'"+patient.getName()+"'"
	            + ", address="+"'"+patient.getAddress()+"'"
				+ ", gender="+"'"+patient.getGender()+"'"
				+ ", dob="+"'"+patient.getDob()+"'"
				+ ", age="+"'"+Integer.toString(patient.getAge())+"'"
				+ ", disease="+"'"+patient.getDisease()+"'"
				+ ", registDate="+"'"+patient.getRegistDate()+"'"
				+ ", status="+"'"+patient.getStatus()+"'"
				+ ", phoneNo="+"'"+patient.getPhoneNo()+"'"
				+ ", emailNo="+"'"+patient.getEmailNo()+"'"
				+ ", notes="+"'"+patient.getNotes()+"'"
				+ "  WHERE pid="+"'"+Integer.toString(patient.getPid())+"'";
        System.out.println(sql);
		try {
			Statement stmt = con.createStatement();
			return stmt.executeUpdate(sql) > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public static boolean patientsRegistration(Patients patient) {
		String sql = "INSERT INTO `patients` (`pid`, `name`, `address`, `gender`, `dob`, `age`, `disease`, `registDate`, `status`, `phoneNo`, `emailNo`, `notes`) VALUES"
				+ "("
				+ patient.getPid()+", "
				+ "'"+patient.getName()+"',"
				+ "'"+patient.getAddress()+"',"
				+ "'"+patient.getGender()+"',"
				+ "'"+patient.getDob()+"',"
				+ patient.getAge()+","				
				+ "'"+patient.getDisease()+"',"
				+ "'"+patient.getRegistDate()+"',"
				+ "'"+patient.getStatus()+"',"
				+ "'"+patient.getPhoneNo()+"',"
				+ "'"+patient.getEmailNo()+"',"
				+ "'"+patient.getNotes()+"'"		
				+ ")";
        System.out.println(sql);
		try {
			Statement stmt = con.createStatement();
			return stmt.executeUpdate(sql) > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public static boolean patientsSavePass(PatientsAccounts account) {
		String sql="INSERT INTO `patientsaccounts` (`pid`, `password`) VALUES"
				+"("
				+account.getPid()+", "
				+"'"+account.getPassword()+"'"
				+")";
		try {
			Statement stmt = con.createStatement();
			return stmt.executeUpdate(sql) > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public static String getPatientsStatusFromID(int pid) {
		String sql = "select status from patients where pid="+Integer.toString(pid);

		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			if (result.next()) {
				return result.getString("status");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public static boolean deletePatient(int pid) {
		String sql = "delete from patients where pid="+Integer.toString(pid);

		try {
			Statement stmt = con.createStatement();
			return stmt.executeUpdate(sql) > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static List<Doctors> selectAllDoctorsWork() {
		String sql = "select * from doctors";
		List<Doctors> availableDoctors = new ArrayList<>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Doctors doctors = resultSetToDoctorsConvert(rs);
				availableDoctors.add(doctors);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availableDoctors;
	}

	public static List<DoctorsBio> selectAllDoctorsBio() {
		String sql = "select * from doctorsbio";
		List<DoctorsBio> availableDoctors = new ArrayList<>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				DoctorsBio doctors = resultSetToDoctorsBioConvert(rs);
				availableDoctors.add(doctors);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availableDoctors;
	}

	private static Doctors resultSetToDoctorsConvert(ResultSet result) throws SQLException {

		return new Doctors(result.getString("name"),
				result.getInt("workid"),
				result.getString("title"),
				result.getString("certificate"), 
				result.getString("officeTime"), 
				result.getString("room"), 
				result.getString("department"),
				result.getString("speciality"), 
				result.getInt("checkupFee"), 
				result.getString("phoneNo"),
				result.getString("emailNo"));
	}

	private static DoctorsBio resultSetToDoctorsBioConvert(ResultSet result) throws SQLException {

		return new DoctorsBio(result.getString("name"),
				result.getString("gender"),
				result.getString("dob"),
				result.getInt("age"),
				result.getString("address"), 
				result.getString("startDate"), 
				result.getInt("workid"));
	}

	public static Doctors selectDoctor(int id) {
		String sql = "select * from doctors where workid="+Integer.toString(id);
		Doctors docs = null;

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				docs = resultSetToDoctorsConvert(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return docs;
	}

	public static DoctorsBio selectDoctorBio(int id) {
		String sql = "select * from doctorsbio where workid="+Integer.toString(id);
		DoctorsBio docs = null;

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				docs = resultSetToDoctorsBioConvert(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return docs;
	}
// Patients
	public static Patients findPatientAccount(int pid, String password) {
		String sql = "select password from patientsaccounts where pid="+Integer.toString(pid);
		System.out.println(sql);
		Patients patient=null;
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			while (result.next()) {
				patient=selectPatient(pid);
			}
			
			return patient;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<Appointments> selectAllAppointments(int pid) {
		String sql = "select * from appointments where pid="+Integer.toString(pid);
		List<Appointments> appos = new ArrayList<>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Appointments appo = resultSetToAppointmentsConvert(rs);
				appos.add(appo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return appos;
	}

	private static Appointments resultSetToAppointmentsConvert(ResultSet rs) throws SQLException{
		return new Appointments(rs.getInt("aid"),
				rs.getInt("pid"),
				rs.getInt("did"),
				rs.getString("date"),
				rs.getString("room"),
				rs.getString("doctor"),
				rs.getString("status")
				);
	}

	public static boolean appointmentsSave(Appointments ap) {

		String sql = "INSERT INTO `appointments` (`aid`, `pid`, `did`, `date`, `room`, `doctor`, `status`) VALUES"
				+ "("
				+ ap.getAid()+", "
				+ "'"+ap.getPid()+"',"
				+ "'"+ap.getDid()+"',"
				+ "'"+ap.getDate()+"',"
				+ "'"+ap.getRoom()+"',"				
				+ "'"+ap.getDoctor()+"',"
				+ "'"+ap.getStatus()+"'"	
				+ ")";
        System.out.println(sql);
		try {
			Statement stmt = con.createStatement();
			return stmt.executeUpdate(sql) > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public static List<Appointments> selectAllAppointments() {
		String sql = "select * from appointments";
		List<Appointments> appos = new ArrayList<>();

		try {
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Appointments appo = resultSetToAppointmentsConvert(rs);
				appos.add(appo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return appos;
	}

}
