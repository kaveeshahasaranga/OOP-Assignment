package onlinetourguide;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UpdateServlet01")
@MultipartConfig 
public class UpdateServlet01 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
    private static final String UPLOAD_DIRECTORY = "images";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String tourname = request.getParameter("tourname");
        String price = request.getParameter("price");
        String location = request.getParameter("location");
        String description = request.getParameter("description");

       
        Part filePart = request.getPart("image");
        String imagePath = request.getParameter("existingImage");  

        
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = getFileName(filePart);
            String uniqueFileName = java.util.UUID.randomUUID().toString() + "_" + fileName;

            
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir(); 
            }

            
            filePart.write(uploadPath + File.separator + uniqueFileName);
            imagePath = UPLOAD_DIRECTORY + "/" + uniqueFileName;  
        }

        
        boolean isTrue = Tourcontrol.updatedata(id, tourname, price, imagePath, location, description);

        if (isTrue) {
      
            List<Tourmodel> tourdetails = Tourcontrol.getById(id);
            request.setAttribute("tourdetails", tourdetails);

            
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Data Update Successful');");
            response.getWriter().println("location='GetAllServelt';");
            response.getWriter().println("</script>");
        } else {
            
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
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
