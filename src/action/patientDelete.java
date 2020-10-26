package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class patientDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public patientDelete() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pid = Integer.parseInt(request.getParameter("delete_id"));
	
		String status = Dbmanager.getPatientsStatusFromID(pid);
		System.out.println("In post; Pid="+pid);
		if (status.equals("Admitted")) {
			System.out.println(status);
			response.sendRedirect("patientManage");
		} else if (Dbmanager.deletePatient(pid)) {
			response.sendRedirect("patientManage");

		}
	}

}
