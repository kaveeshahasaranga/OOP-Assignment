package onlinetourguide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/GetAllServlet")
public class GetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        processRequest(request, response);
	    }


	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        processRequest(request, response);
	    }


	    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<EventMode> eveDetails = EventDBUtill.getallEventsDetails();
	        request.setAttribute("eveDetails", eveDetails);
	        RequestDispatcher dis = request.getRequestDispatcher("EventDetails.jsp");
	        dis.forward(request, response);
	    }
}
