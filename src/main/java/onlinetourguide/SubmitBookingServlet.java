package onlinetourguide;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/SubmitBookingServlet")
public class SubmitBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkInDateStr = request.getParameter("checkInDate");
        String checkOutDateStr = request.getParameter("checkOutDate");
        String email = request.getParameter("email");

        // Parse the dates
        LocalDate checkInDate = null;
        LocalDate checkOutDate = null;
        try {
            checkInDate = LocalDate.parse(checkInDateStr);
            checkOutDate = LocalDate.parse(checkOutDateStr);
        } catch (DateTimeParseException e) {
            request.getSession().setAttribute("message", "Invalid date format.");
            response.sendRedirect("bookingForm.jsp");
            return;
        }

        // Date validation: check-in cannot be in the past and check-out must be after check-in
        LocalDate today = LocalDate.now();
        if (checkInDate.isBefore(today)) {
            request.getSession().setAttribute("message", "Check-in date cannot be in the past.");
            response.sendRedirect("bookingForm.jsp");
            return;
        }
        if (checkOutDate.isBefore(checkInDate) || checkOutDate.isEqual(checkInDate)) {
            request.getSession().setAttribute("message", "Check-out date must be after check-in date.");
            response.sendRedirect("bookingForm.jsp");
            return;
        }

        // Email validation: check if email already exists
        BookingDAO bookingDAO = new BookingDAO();
        if (bookingDAO.emailExists(email)) {
            request.getSession().setAttribute("message", "Email already exists. Please use a different email.");
            response.sendRedirect("bookingForm.jsp");
            return;
        }

        // If all validations pass, proceed with booking
        Booking booking = new Booking();
        booking.setFullName(request.getParameter("fullName"));
        booking.setEmail(email);
        booking.setPhone(request.getParameter("phone"));
        booking.setCheckInDate(checkInDateStr);
        booking.setCheckOutDate(checkOutDateStr);
        booking.setRoomType(request.getParameter("roomType"));
        booking.setNumGuests(Integer.parseInt(request.getParameter("numGuests")));

        // Add booking to the database
        bookingDAO.addBooking(booking);

        // Set a success message and redirect to the dashboard
        request.getSession().setAttribute("message", "Booking successful!");
        response.sendRedirect("userDashboard.jsp");
    }

}
