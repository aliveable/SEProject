/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
@WebServlet(name = "newInc", urlPatterns = {"/newInc"})
public class newInc extends HttpServlet {

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
                String id = request.getParameter("packageid");
                String text = request.getParameter("package_text");
                String price = request.getParameter("package_list_price");
                String max = request.getParameter("package_list_max");
                if (price.equals("0")){
                    stmt.executeUpdate("Insert INTO package_list (Package_ID, Package_Text, Package_List_Price, Package_List_Max) VALUES('"+id+"', N'"+text+"', 0, 0);");
                    out.println("yes");
                } else {
                    stmt.executeUpdate("Insert INTO package_list (Package_ID, Package_Text, Package_List_Price, Package_List_Max) VALUES('"+id+"', N'"+text+"', '"+price+"', '"+max+"');");
                    out.println("no");
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
