package onlinetourguide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AloginServelt")
public class AloginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		try {
			List<EvenMoode> alogin = TourDBco.validate(userName, password);
			request.setAttribute("alogin", alogin);
			
			
		}catch (Exception e){
			e.printStackTrace();
			
		}
		RequestDispatcher dis = request.getRequestDispatcher("adminhome.jsp");
		dis.forward(request, response);
		
	}

}
