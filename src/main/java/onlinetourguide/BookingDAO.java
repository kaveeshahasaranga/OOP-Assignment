package onlinetourguide;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {
    private Connection connection;

    public BookingDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_tour_guide", "root", "1234");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addBooking(Booking booking) {
        String query = "INSERT INTO bookings (fullName, email, phone, checkInDate, checkOutDate, roomType, numGuests) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, booking.getFullName());
            ps.setString(2, booking.getEmail());
            ps.setString(3, booking.getPhone());
            ps.setString(4, booking.getCheckInDate());
            ps.setString(5, booking.getCheckOutDate());
            ps.setString(6, booking.getRoomType());
            ps.setInt(7, booking.getNumGuests());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        String query = "SELECT * FROM bookings";
        try (PreparedStatement ps = connection.prepareStatement(query); 
        		ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Booking booking = new Booking();
                booking.setBookingId(rs.getInt("bookingId"));
                booking.setFullName(rs.getString("fullName"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setCheckInDate(rs.getString("checkInDate"));
                booking.setCheckOutDate(rs.getString("checkOutDate"));
                booking.setRoomType(rs.getString("roomType"));
                booking.setNumGuests(rs.getInt("numGuests"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }
    
    public void updateBooking(Booking booking) {
        String query = "UPDATE bookings SET fullName=?, email=?, phone=?, checkInDate=?, checkOutDate=?, roomType=?, numGuests=? WHERE bookingId=?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, booking.getFullName());
            ps.setString(2, booking.getEmail());
            ps.setString(3, booking.getPhone());
            ps.setString(4, booking.getCheckInDate());
            ps.setString(5, booking.getCheckOutDate());
            ps.setString(6, booking.getRoomType());
            ps.setInt(7, booking.getNumGuests());
            ps.setInt(8, booking.getBookingId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    public Booking getBookingById(int bookingId) {
        Booking booking = null;
        String query = "SELECT * FROM bookings WHERE bookingId=?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, bookingId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                booking = new Booking();
                booking.setBookingId(rs.getInt("bookingId"));
                booking.setFullName(rs.getString("fullName"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setCheckInDate(rs.getString("checkInDate"));
                booking.setCheckOutDate(rs.getString("checkOutDate"));
                booking.setRoomType(rs.getString("roomType"));
                booking.setNumGuests(rs.getInt("numGuests"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return booking;
    }



    public void deleteBooking(int bookingId) {
        String query = "DELETE FROM bookings WHERE bookingId=?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, bookingId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public boolean emailExists(String email) {
        String query = "SELECT COUNT(*) FROM bookings WHERE email = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;  // If count > 0, the email exists
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}
