package onlinetourguide;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/TourServlet")
@MultipartConfig 
public class TourServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
    private static final String UPLOAD_DIRECTORY = "images";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form parameters
        String tourname = request.getParameter("tourname");
        String price = request.getParameter("price");
        String location = request.getParameter("location");
        String description = request.getParameter("description");

        
        Part filePart = request.getPart("image");
        if (filePart != null && filePart.getSize() > 0) { 
            String fileName = getFileName(filePart);  

           
            String uniqueFileName = UUID.randomUUID().toString() + "_" + fileName;

           
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir(); 
            }

            
            filePart.write(uploadPath + File.separator + uniqueFileName);

            
            String imagePath = UPLOAD_DIRECTORY + "/" + uniqueFileName;



            
            boolean isTrue = Tourcontrol.insertdata(tourname, price, imagePath, location, description);

            if (isTrue) {
                String alertMessage = "Data Insert Successful";
                response.getWriter().println("<script type='text/javascript'>");
                response.getWriter().println("alert('" + alertMessage + "');");
                response.getWriter().println("location='GetAllServelt';");
                response.getWriter().println("</script>");
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
                dis2.forward(request, response);
            }
        } else {
            
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Image upload failed! Please select a valid file.');");
            response.getWriter().println("location='upload.jsp';");
            response.getWriter().println("</script>");
        }
    }

    
    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        for (String cd : contentDisposition.split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
