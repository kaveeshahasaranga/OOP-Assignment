package onlinetourguide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

public class TourDBco {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // 1. Validate User Login
    public static List<EvenMoode> validate(String username, String password) {
        ArrayList<EvenMoode> even = new ArrayList<>();
        try {
            // Establish the connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Query to validate the user
            String sql = "SELECT * FROM alogin WHERE username = ? AND password = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            // Check if a matching record exists
            if (rs.next()) {
                int id = rs.getInt("id"); // Assuming there's an 'id' column
                String uname = rs.getString("username");
                String pass = rs.getString("password");

                // Create a new EvenMoode object and add it to the list
                EvenMoode user = new EvenMoode(id, uname, pass);
                even.add(user);

                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close the resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return even;
    }

    // 2. Insert New User
    public static boolean insertUser(String username, String password) {
        boolean isInserted = false;
        try {
            con = DBConnection.getConnection();
            String sql = "INSERT INTO alogin (username, password) VALUES (?, ?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isInserted = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isInserted;
    }

    // 3. Update User Information
    public static boolean updateUser(int id, String username, String password) {
        boolean isUpdated = false;
        try {
            con = DBConnection.getConnection();
            String sql = "UPDATE alogin SET username = ?, password = ? WHERE id = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setInt(3, id);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isUpdated = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isUpdated;
    }

    // 4. Delete User
    public static boolean deleteUser(int id) {
        boolean isDeleted = false;
        try {
            con = DBConnection.getConnection();
            String sql = "DELETE FROM alogin WHERE id = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, id);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isDeleted = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isDeleted;
    }
}
