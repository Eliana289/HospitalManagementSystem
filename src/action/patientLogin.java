package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Patients;
import bean.PatientsAccounts;


public class patientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public patientLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pid = Integer.parseInt(request.getParameter("pid"));
		String password = request.getParameter("password");
System.out.println(pid + " " + password);
		Patients patient = null;

		if (request.getParameter("pid") == null || password == null || password.length() == 0) {
			System.out.println("pid or password is required");

		} else {
			
				patient = Dbmanager.findPatientAccount(pid, password);
				if (patient == null) {
					System.out.println("pid or password is invalid");
				} else {
					request.setAttribute("patients", patient);
					request.setAttribute("password", password);
					RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientHome.jsp");
					dispatcher.forward(request, response);
				}
			
		}
		
	}

}
