package onlinetourguide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginservlet01")
public class loginservlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");
		
		
		try {
		List<geust> geudetails = loginDBUtil.validate(username, password);
		request.setAttribute("guedetails", geudetails);
		
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("userhome.jsp");
		dis.forward(request, response);
	}

}
