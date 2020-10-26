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

public class aAppointments extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public aAppointments() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Appointments> allAppointments = Dbmanager.selectAllAppointments();
		if (!allAppointments.isEmpty()) {
			request.setAttribute("appointments", allAppointments);
			System.out.println("appointments got");
		}
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/aAppointments.jsp");
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
