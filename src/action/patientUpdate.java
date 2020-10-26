package action;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Patients;

public class patientUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public patientUpdate() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
System.out.println("inPost");
		Patients patients = new Patients(Integer.parseInt(request.getParameter("pid")), request.getParameter("name"),
				request.getParameter("address"), request.getParameter("gender"),request.getParameter("dob"),
				Integer.parseInt(request.getParameter("age")), request.getParameter("disease"), request.getParameter("registDate"),
				 request.getParameter("status"), request.getParameter("phoneNo"),
				request.getParameter("emailNo"), request.getParameter("notes"));

		int pid = patients.getPid();
		System.out.println("pid is "+pid);
		if (Dbmanager.updatePatientsData(patients, pid)) {
			request.setAttribute("patients", patients);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientDetails.jsp");
			dispatcher.forward(request, response);

		}

	}

}

