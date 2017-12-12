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
 * @author khunach
 */
@WebServlet(name = "editInc", urlPatterns = {"/editInc"})
public class editInc extends HttpServlet {
    private Connection conn;
    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            PreparedStatement stmt = null;
            HttpSession session = request.getSession();
            try (PrintWriter out = response.getWriter()) {
                String id = request.getParameter("packageid");
                String text = request.getParameter("package_text");
                String price = request.getParameter("package_list_price");
                String package_list_id = request.getParameter("packagelistid");
                if (price.equals("0")){
                    stmt = conn.prepareStatement("Update package_list SET Package_Text=? WHERE Package_List_ID=?;"); 
                    stmt.setString(1, text); 
                    stmt.setString(2, package_list_id);
                    stmt.executeUpdate();
                } else {
                    stmt = conn.prepareStatement("Update package_list SET Package_Text=?, Package_List_Price=? WHERE Package_List_ID=?;"); 
                    stmt.setString(1, text); 
                    stmt.setString(2, price);
                    stmt.setString(3, package_list_id);
                    stmt.executeUpdate();
                }
                RequestDispatcher pg = request.getRequestDispatcher("editPackage?id="+id);
                pg.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
