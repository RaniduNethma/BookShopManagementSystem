package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = UserController.deleteUserData(id);
		
		if(isTrue == true) {
			String alertMessage = "User Data Delete Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');"+"window.location.href='login.jsp';</script>");
		}
		else {
			List<UserModel> userDetails = UserController.getById(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wring.jsp");
			dispatcher.forward(request, response);
		}
	}

}
