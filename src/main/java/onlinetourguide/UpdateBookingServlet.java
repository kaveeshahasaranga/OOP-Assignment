package onlinetourguide;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Initialize variables
        String bookingIdStr = request.getParameter("bookingId");
        String numGuestsStr = request.getParameter("numGuests");

        // Validate bookingId and numGuests
        if (bookingIdStr == null || bookingIdStr.isEmpty()) {
            request.setAttribute("error", "Invalid booking ID.");
            request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
            return;
        }

        if (numGuestsStr == null || numGuestsStr.isEmpty()) {
            request.setAttribute("error", "Number of guests cannot be empty.");
            request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
            return;
        }

        try {
            // Parse bookingId and numGuests
            int bookingId = Integer.parseInt(bookingIdStr);
            int numGuests = Integer.parseInt(numGuestsStr);

            // Set the updated booking values
            Booking updatedBooking = new Booking();
            updatedBooking.setBookingId(bookingId);
            updatedBooking.setFullName(request.getParameter("fullName"));
            updatedBooking.setEmail(request.getParameter("email"));
            updatedBooking.setPhone(request.getParameter("phone"));
            updatedBooking.setCheckInDate(request.getParameter("checkInDate"));
            updatedBooking.setCheckOutDate(request.getParameter("checkOutDate"));
            updatedBooking.setRoomType(request.getParameter("roomType"));
            updatedBooking.setNumGuests(numGuests);

            // Update booking in database
            BookingDAO bookingDAO = new BookingDAO();
            bookingDAO.updateBooking(updatedBooking);

            // Forward to success page
            request.setAttribute("message", "Booking updated successfully!");
            request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            // Handle invalid number formats
            request.setAttribute("error", "Invalid number format for booking ID or number of guests.");
            request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
        }
    }
}
