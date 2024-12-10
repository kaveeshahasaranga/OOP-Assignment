package onlinetourguide;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewFeedbackServlet")
public class ViewFeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Fetch feedback list from the database
        List<Feedback> feedbackList = DBUtil.getAllFeedbacks();

        // Set the list as a request attribute
        request.setAttribute("feedbackList", feedbackList);

        // Forward to the view.jsp page to display the feedback
        request.getRequestDispatcher("view.jsp").forward(request, response);
    }
}
