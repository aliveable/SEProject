package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "UploadPicture", urlPatterns = {"/UploadPicture"})
public class UploadPicture extends HttpServlet {

    private final int MAX_FILE_SIZE = 5 * 1024 * 1024;
    private String filePath;
    private File file;

    private void testAlert(HttpServletResponse response, String message) {
        try (PrintWriter out = response.getWriter()) {
            out.println("<body>");
            out.println(message);
            out.println("</body>");
            out.println("<script>");
            out.println("alert('" + message + "')");
            out.println("</script>");
        } catch (IOException ex) {
            Logger.getLogger(EditServicePicture.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        filePath = getServletContext().getRealPath("/") + "ServicePicture" + File.separator;

        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
            testAlert(response, "dose not contain multipart content");
            return;
        }

        File picturePath = new File(filePath);
        if (!picturePath.exists()) {
            picturePath.mkdirs();
        }

        DiskFileItemFactory factory = new DiskFileItemFactory();

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);

        try {
            List fileItems = upload.parseRequest(request);
            Iterator i = fileItems.iterator();

            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    String fileName = fi.getName();

                    if (fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    fi.write(file);
                }
            }
        } catch (FileUploadBase.FileSizeLimitExceededException ex) {
            testAlert(response, "too large");
        } catch (Exception ex) {
            Logger.getLogger(EditServicePicture.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
