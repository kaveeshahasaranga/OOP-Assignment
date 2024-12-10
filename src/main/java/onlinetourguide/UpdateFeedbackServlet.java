package onlinetourguide;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// This servlet handles the update of feedback information
@WebServlet("/UpdateFeedbackServlet")
public class UpdateFeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String idStr = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedbackText = request.getParameter("feedback");

        
        if (idStr == null || idStr.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID is missing or invalid.");
            return;
        }

        try {
            // Parse the ID
            int id = Integer.parseInt(idStr);

            // Validate input fields
            if (name == null || name.isEmpty() || email == null || email.isEmpty() || feedbackText == null || feedbackText.isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }
            if (!email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid email format.");
	            return;
	        }

            // Create a Feedback object for updating
            Feedback feedback = new Feedback(id, name, email, feedbackText, null);

            // Update feedback in the database
            DBUtil feedbackDAO = new DBUtil();
            boolean updateSuccess = feedbackDAO.updateFeedback(feedback);

            // Redirect based on success or failure
            if (updateSuccess) {
                response.sendRedirect("ViewFeedbackServlet");  // Redirect to the view page after successful update
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to update feedback.");
            }

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID must be a valid number.");
        } catch (Exception e) {
            e.printStackTrace();  // Log the error
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while updating feedback.");
        }
    }
}
