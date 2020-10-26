package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Patients;

public class patientEdit extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public patientEdit() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("edit_id"));
		Patients selectedPatient = Dbmanager.selectPatient(id);

		if (selectedPatient != null) {
			request.setAttribute("patients", selectedPatient);
			RequestDispatcher dispatcher = this.getServletContext()
					.getRequestDispatcher("/patientEdit.jsp");

			dispatcher.forward(request, response);

		} else {
			System.out.println("no patient");
		}
	}
}
