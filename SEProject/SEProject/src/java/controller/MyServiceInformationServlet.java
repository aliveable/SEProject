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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ServiceDesc;

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "MyServiceInformationServlet", urlPatterns = {"/MyServiceInformation"})
public class MyServiceInformationServlet extends HttpServlet {

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
            RequestDispatcher pg = request.getRequestDispatcher("MyServiceInformation.jsp");
            try (PrintWriter out = response.getWriter()) {
                out.println("test");
                ResultSet rs = stmt.executeQuery("SELECT Space_ID, Space_Name, Space_Desc, Space_Address, Space_District, Space_SubDistrict, "
                        + "Space_Province, Space_PostalCode, Space_Status "
                        + "FROM space WHERE Space_ID=" + request.getParameter("id") + ";");
                rs.next();
                ServiceDesc desc = new ServiceDesc();
                desc.setAddress(rs.getString("Space_Address"));
                desc.setDesc(rs.getString("Space_Desc"));
                desc.setDistrict(rs.getString("Space_District"));
                desc.setId(rs.getInt("Space_ID"));
                desc.setName(rs.getString("Space_Name"));
                desc.setPostal_code(rs.getString("Space_PostalCode"));
                desc.setProvince(rs.getString("Space_Province"));
                desc.setStatus(rs.getString("Space_Status"));
                desc.setSub_district(rs.getString("Space_SubDistrict"));
                rs.close();
                session.setAttribute("desc", desc);
                request.setAttribute("ids", request.getParameter("id"));
                pg.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MyServiceInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
