package onlinetourguide;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteFeedbackServlet")
public class DeleteFeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the feedback ID from the form and validate it
        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            // Redirect to an error page if the ID is invalid
            response.sendRedirect("error.jsp");
            return;
        }

        // Call DBUtil to delete the feedback
        boolean success = DBUtil.deleteFeedback(id);

        // Redirect based on success or failure
        if (success) {
            response.sendRedirect("ViewFeedbackServlet");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}

