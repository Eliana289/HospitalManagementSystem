package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Patients;

public class patientManage extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public patientManage() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Patients> allAvailablePatients = Dbmanager.selectAllPatientsData();
		if (!allAvailablePatients.isEmpty()) {
			request.setAttribute("allPatients", allAvailablePatients);
			System.out.println("patients got");
		}

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/patientManage.jsp");
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
