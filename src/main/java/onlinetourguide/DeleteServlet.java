package onlinetourguide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = EventDBUtill.deleteEvent(id);
		if (isTrue ==true) {
			String alertMessage ="Data Deleted Successfully";
			response.getWriter().println("<script type='text/javascript'>");
			response.getWriter().println("alert('" + alertMessage + "');");
			response.getWriter().println("location='GetAllServlet';");
			response.getWriter().println("</script>");
		}
		else {
			List<EventMode> eveDetails = EventDBUtill.getById(id);
			request.setAttribute("eveDetails", eveDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
			dis2.forward(request, response);
		}
		
	}

}
