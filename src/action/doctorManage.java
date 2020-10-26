package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Doctors;
import bean.DoctorsBio;

public class doctorManage extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public doctorManage() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Doctors> doctorsWork = Dbmanager.selectAllDoctorsWork();
		List<DoctorsBio> doctorsBio = Dbmanager.selectAllDoctorsBio();
		if (!doctorsWork.isEmpty() && !doctorsBio.isEmpty()) {
			request.setAttribute("doctorWork", doctorsWork);
			request.setAttribute("doctorBio", doctorsBio);
			System.out.println("doctors list got");
		}

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/doctorManage.jsp");
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
