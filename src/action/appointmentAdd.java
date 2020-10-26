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

public class appointmentAdd extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public appointmentAdd() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In appointment add");
		int id = Integer.parseInt(request.getParameter("pid"));
		String password = request.getParameter("password");
		
		Patients pa = Dbmanager.selectPatient(id);
		if (!pa.getStatus().equals("Admitted")) {
			request.setAttribute("pid", id);
			request.setAttribute("password", password);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/appointmentAddFailed.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("pid", id);
			request.setAttribute("password", password);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/appointmentAdd.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
