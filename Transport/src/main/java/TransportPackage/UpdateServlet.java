package TransportPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String email =request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String pickup_location = request.getParameter("pickup_location");
		
		boolean isTrue;
		isTrue = TransportController.updatedata(id, fullname, email, phone_number, pickup_location);
		
		if(isTrue == true) {
			List<TransportModel> transportDetails = TransportController.getById(id);
			request.setAttribute("transportDetails", transportDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href = 'GetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
