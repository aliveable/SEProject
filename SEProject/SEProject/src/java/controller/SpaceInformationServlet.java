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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.SpaceInfo;

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "SpaceInformationServlet", urlPatterns = {"/SpaceInformation"})
public class SpaceInformationServlet extends HttpServlet {

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
            RequestDispatcher pg = request.getRequestDispatcher("SpaceInformation.jsp");
            try (PrintWriter out = response.getWriter()) {
                String id = request.getParameter("id");
                
                stmt = conn.prepareStatement("SELECT s.Space_Name, s.Space_Address, s.Space_District, s.Space_SubDistrict, s.Space_Province, s.Space_Desc, "
                        + "m.Firstname, m.Lastname, m.Phone, m.Email, m.Address, m.District, m.SubDistrict, m.Province, m.PostalCode "
                        + "FROM space s JOIN member m ON (m.Username = s.Username )"
                        + "WHERE Space_ID=?;");                
                stmt.setString(1, id);                
                ResultSet rs = stmt.executeQuery();
                rs.next();
                SpaceInfo spInfo = new SpaceInfo();
                spInfo.setAddress(rs.getString("Space_Address"));
                spInfo.setDesc(rs.getString("Space_Desc"));
                spInfo.setDistrict(rs.getString("Space_District"));
                spInfo.setEmail(rs.getString("Email"));
                spInfo.setFirst_name(rs.getString("Firstname"));
                spInfo.setLast_name(rs.getString("Lastname"));
                spInfo.setName(rs.getString("Space_Name"));
                spInfo.setPhone(rs.getString("Phone"));
                spInfo.setProvider_address(rs.getString("Address"));
                spInfo.setProvider_district(rs.getString("District"));
                spInfo.setProvider_postal_code(rs.getString("PostalCode"));
                spInfo.setProvider_province(rs.getString("Province"));
                spInfo.setProvider_sub_district(rs.getString("SubDistrict"));
                spInfo.setProvince(rs.getString("Space_Province"));
                spInfo.setSub_district(rs.getString("Space_SubDistrict"));
                request.setAttribute("spInfo", spInfo);
                rs.close();
                pg.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SpaceInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
