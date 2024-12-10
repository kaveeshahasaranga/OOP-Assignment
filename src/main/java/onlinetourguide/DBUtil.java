package onlinetourguide;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBUtil {

    // Method to save new feedback (for insertion)
    public static boolean saveFeedback(Feedback feedback) {
        String query = "INSERT INTO feedback (name, email, feedback_text) VALUES (?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, feedback.getName());
            stmt.setString(2, feedback.getEmail());
            stmt.setString(3, feedback.getFeedback());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve all feedbacks (used for displaying in view.jsp)
    public static List<Feedback> getAllFeedbacks() {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT * FROM feedback";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Feedback feedback = new Feedback(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("feedback_text"),
                    rs.getTimestamp("submitted_at")
                );
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    // Method to retrieve feedback by ID (used in EditFeedbackServlet)
    public static Feedback getFeedbackById(int id) {
        String query = "SELECT * FROM feedback WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Feedback(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("feedback_text"),
                    rs.getTimestamp("submitted_at")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to update feedback
    public static boolean updateFeedback(Feedback feedback) {
        String query = "UPDATE feedback SET name = ?, email = ?, feedback_text = ? WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, feedback.getName());
            stmt.setString(2, feedback.getEmail());
            stmt.setString(3, feedback.getFeedback());
            stmt.setInt(4, feedback.getId());

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete feedback by ID
    public static boolean deleteFeedback(int id) {
        String query = "DELETE FROM feedback WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);

            int rowsDeleted = stmt.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean updateFeedback(int id, String name, String email, String feedback) {
        String updateSQL = "UPDATE feedback SET name = ?, email = ?, feedback = ? WHERE id = ?";

        try (Connection conn = DBUtil.getConnection(); 
             PreparedStatement stmt = conn.prepareStatement(updateSQL)) {
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, feedback);
            stmt.setInt(4, id);

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
    }

	private static Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
    
}
