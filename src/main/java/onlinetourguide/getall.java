package onlinetourguide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getall")
public class getall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Tourmodel> allTours = Tourcontrol.getAllTours();
		request.setAttribute("allTours",allTours);
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("viewuser.jsp");
		dispatcher.forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request,response);
	}
}
