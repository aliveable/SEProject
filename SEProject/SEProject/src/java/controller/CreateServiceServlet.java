/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "CreateServiceServlet", urlPatterns = {"/CreateServiceServlet"})
public class CreateServiceServlet extends HttpServlet {

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
            PreparedStatement stmt = null;
            HttpSession session = request.getSession();
            try (PrintWriter out = response.getWriter()) {
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String district = request.getParameter("district");
                String sub_district = request.getParameter("sub_district");
                String province = request.getParameter("province");
                String postal_code = request.getParameter("postal_code");
                String desc = request.getParameter("contents");
                stmt = conn.prepareStatement("INSERT INTO space "
                        + "(Username, Space_Name, Space_Desc, Space_Address, Space_District, Space_SubDistrict, Space_Province, Space_PostalCode, Space_Status)"
                        + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
                stmt.setString(1, (String) session.getAttribute("username"));
                stmt.setString(2, name);
                stmt.setString(3, desc);
                stmt.setString(4, address);
                stmt.setString(5, district);
                stmt.setString(6, sub_district);
                stmt.setString(7, province);
                stmt.setString(8, postal_code);
                stmt.setString(9, "Incomplete");
                stmt.executeUpdate();
                response.sendRedirect("CreateService.jsp");  
            }
        } catch (SQLException ex) {
            Logger.getLogger(CreateServiceServlet.class.getName()).log(Level.SEVERE, null, ex);
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
