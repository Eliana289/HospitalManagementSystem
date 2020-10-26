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

public class patientAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public patientAdd() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = this.getServletContext()
				.getRequestDispatcher("/patientAdd.jsp");

		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Patients newPatients = null;

		newPatients = new Patients(Integer.parseInt(request.getParameter("pid")), request.getParameter("name"),
				request.getParameter("address"), request.getParameter("gender"),request.getParameter("dob"),
				Integer.parseInt(request.getParameter("age")), request.getParameter("disease"), request.getParameter("registDate"),
				 request.getParameter("status"), request.getParameter("phoneNo"),
				request.getParameter("emailNo"), request.getParameter("notes"));

		String errorStirng = null;

		if (Dbmanager.patientsRegistration(newPatients)) {
			request.setAttribute("patients", newPatients);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientDetails.jsp");
			dispatcher.forward(request, response);

		} else {

			errorStirng = "Error Occured !! Your requested patients data is not added !!";

			request.setAttribute("errorString", errorStirng);

			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/error.jsp");
			dispatcher.forward(request, response);

		}
	}

}
