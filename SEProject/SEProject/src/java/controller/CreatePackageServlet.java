/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
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
@WebServlet(name = "CreatePackageServlet", urlPatterns = {"/CreatePackageServlet"})
public class CreatePackageServlet extends HttpServlet {

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
                stmt = conn.prepareStatement("INSERT INTO package "
                        + "(Space_ID, Package_Name, Package_Desc, Package_Price, Package_Size, Package_LimitTime_Modify, Package_OpenHour, Package_LastHour)"
                        + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                stmt.setInt(1, Integer.parseInt(request.getParameter("space_id")));
                stmt.setString(2, request.getParameter("name"));
                stmt.setString(3, request.getParameter("contents"));
                stmt.setInt(4, Integer.parseInt(request.getParameter("price")));
                stmt.setInt(5, Integer.parseInt(request.getParameter("max")));
                stmt.setInt(6, Integer.parseInt(request.getParameter("before")));
                stmt.setString(7, request.getParameter("open_time"));
                stmt.setString(8, request.getParameter("close_time"));
                stmt.executeUpdate();
                RequestDispatcher pg = request.getRequestDispatcher("MyServiceInformation?id="+request.getParameter("space_id"));
                pg.forward(request, response); 
            }} catch (SQLException ex) {
                Logger.getLogger(CreatePackageServlet.class.getName()).log(Level.SEVERE, null, ex);
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
