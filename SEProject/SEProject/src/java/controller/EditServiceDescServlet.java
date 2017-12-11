/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "EditServiceServlet", urlPatterns = {"/EditServiceServlet"})
public class EditServiceDescServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private Connection conn;

    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            Statement stmt = conn.createStatement();
            HttpSession session = request.getSession();
            try (PrintWriter out = response.getWriter()) {
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String district = request.getParameter("district");
                String sub_district = request.getParameter("sub_district");
                String province = request.getParameter("province");
                String postal_code = request.getParameter("postal_code");
                String desc = request.getParameter("contents");
                String id = request.getParameter("id");
                String status = "Incomplete";
                stmt.executeUpdate("Update space SET Space_Name=N'" + name + "', Space_Desc=N'" + desc + "', Space_Address='" + address + "', Space_District=N'" + district + "', "
                        + "Space_SubDistrict=N'" + sub_district + "', Space_Province=N'" + province + "', Space_PostalCode=N'" + postal_code + "', Space_Status=N'" + status + "'"
                        + " WHERE Space_ID="+id+";");
                out.println("<script>alert(\"Success\");location=\"./MyService\";</script>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }}

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
