package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Appointments;
import bean.Patients;

public class appointmentSave extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public appointmentSave() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Appointments ap = null;
		int id = Integer.parseInt(request.getParameter("pid"));
		String password = request.getParameter("password");
		ap = new Appointments(Integer.parseInt(request.getParameter("aid")),
				Integer.parseInt(request.getParameter("pid")),
				Integer.parseInt(request.getParameter("did")),
				request.getParameter("date"),
				request.getParameter("room"),
				request.getParameter("doctor"),
				request.getParameter("status"));

		String errorStirng = null;

		if (Dbmanager.appointmentsSave(ap)) {
			List<Appointments> allAppointments = Dbmanager.selectAllAppointments(id);
			if (!allAppointments.isEmpty()) {
				request.setAttribute("appointments", allAppointments);
				System.out.println("appointments got");
			}
			request.setAttribute("pid", id);
			request.setAttribute("password", password);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientAppointments.jsp");
			dispatcher.forward(request, response);
		} else {
			errorStirng = "Error Occured !! Your requested patients data is not added !!";
			request.setAttribute("errorString", errorStirng);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/error.jsp");
			dispatcher.forward(request, response);

		}
	}

}
