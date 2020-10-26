package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Appointments;
import bean.Patients;

public class patientAppointmentManage extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public patientAppointmentManage() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("pid"));
		String password = request.getParameter("password");
		List<Appointments> allAppointments = Dbmanager.selectAllAppointments(id);
		if (!allAppointments.isEmpty()) {
			request.setAttribute("appointments", allAppointments);
			System.out.println("appointments got");
		}
		request.setAttribute("pid", id);
		request.setAttribute("password", password);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientAppointments.jsp");
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
