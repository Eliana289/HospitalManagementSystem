package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Doctors;
import bean.DoctorsBio;

public class doctorDetails extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public doctorDetails() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("detail_id"));
		Doctors selectedDoctor = Dbmanager.selectDoctor(id);
		DoctorsBio selectedDoctorBio = Dbmanager.selectDoctorBio(id);
		if (selectedDoctor != null && selectedDoctorBio!=null) {
			System.out.println("doctor details found");
			request.setAttribute("doctorsWork", selectedDoctor);
			request.setAttribute("doctorsBio", selectedDoctorBio);
			RequestDispatcher dispatcher = this.getServletContext()
					.getRequestDispatcher("/doctorDetails.jsp");

			dispatcher.forward(request, response);

		} else {
			System.out.println("no doctor");
		}
	}
}
