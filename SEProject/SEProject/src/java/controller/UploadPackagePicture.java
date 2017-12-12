package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.PackageInfo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(urlPatterns = {"/UploadPackagePicture"})
public class UploadPackagePicture extends HttpServlet {

    private final int MAX_FILE_SIZE = 5 * 1024 * 1024;
    private File file;
    private Connection conn;

    @Override
    public void init() throws ServletException {
        conn = (Connection) getServletContext().getAttribute("connection");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            PackageInfo packageItem = (PackageInfo) session.getAttribute("package");

            String folderPath = "PackagePicture";
            String realPath = getServletContext().getRealPath("/") + folderPath + File.separator;

            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {
                out.println("<script>");
                out.println("alert('Dose not contain multipart content');");
                out.println("location='EditServicePicture';");
                out.println("</script>");
                return;
            }

            File picturePath = new File(realPath);
            if (!picturePath.exists()) {
                picturePath.mkdirs();
            }

            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setFileSizeMax(MAX_FILE_SIZE);

            try {
                List<FileItem> fileItems = upload.parseRequest(request);

                if (fileItems.size() + packageItem.contPics() > 3) {
                    out.println("<script>");
                    out.println("alert('You can upload only 3 picture per package');");
                    out.println("location='EditPackagePicture';");
                    out.println("</script>");
                    return;
                }

                Iterator<FileItem> iter = fileItems.iterator();

                Statement stmt = conn.createStatement();

                int i = 0;
                while (iter.hasNext()) {
                    FileItem fi = (FileItem) iter.next();

                    if (!fi.isFormField()) {
                        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
                        String fileName = fi.getName();
                        String[] fileType = fileName.split("[.]");
                        String filePath = timeStamp + i + "." + fileType[fileType.length - 1];

                        file = new File(realPath + filePath);
                        fi.write(file);

                        String sql = "INSERT INTO package_pic VALUES (" + packageItem.getPackage_id()+ ", '" + folderPath + "/" + filePath + "');";
                        stmt.executeUpdate(sql);
                        i++;
                    }
                }
                response.sendRedirect("editPackage?id=" + packageItem.getPackage_id());
            } catch (FileUploadBase.FileSizeLimitExceededException ex) {
                out.println("<script>");
                out.println("alert('Some of your picture size is larger than 5 MB');");
                out.println("location='EditPackagePicture';");
                out.println("</script>");
            } catch (Exception ex) {
                Logger.getLogger(EditServicePicture.class.getName()).log(Level.SEVERE, null, ex);
            }
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
