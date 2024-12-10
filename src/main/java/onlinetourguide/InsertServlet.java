package onlinetourguide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventname = request.getParameter("eventname");
		String location = request.getParameter("location");
		String date = request.getParameter("date");
		String description = request.getParameter("description");
		
		boolean isTrue;
		 
		isTrue = EventDBUtill.insertdata(eventname, location, date, description);
		
		if(isTrue == true) {
			String alertMessage ="Data Insert Succesful";
			response.getWriter().println("<script type='text/javascript'>");
			response.getWriter().println("alert('" + alertMessage + "');");
			response.getWriter().println("location='GetAllServlet';");
			response.getWriter().println("</script>");
			
			
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
			dis2.forward(request, response);
			
			
		}
		
		
	}

}
