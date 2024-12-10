package onlinetourguide;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedback = request.getParameter("feedback");

        // Create a feedback object (optional, but recommended for organization)
        Feedback feedbackObj = new Feedback(name, email, feedback);

        // Call the DBUtil to save feedback
        boolean success = DBUtil.saveFeedback(feedbackObj);

        // Redirect to success or error page based on result
        if (success) {
            response.sendRedirect("ViewFeedbackServlet");
        } else {
            response.sendRedirect("feedback-error.jsp");
        }
    }
}
