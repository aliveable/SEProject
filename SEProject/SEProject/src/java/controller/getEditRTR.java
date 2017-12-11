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
import model.RightToRecive;
import model.RightToRecives;

/**
 *
 * @author khunach
 */
@WebServlet(name = "getEditRTR", urlPatterns = {"/getEditRTR"})
public class getEditRTR extends HttpServlet {

    private Connection conn;

    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Statement stmt = conn.createStatement();
            String space_id = request.getParameter("id");
            RequestDispatcher pg = request.getRequestDispatcher("editRightToRecive.jsp");
            ResultSet rs = stmt.executeQuery("SELECT *"
                    + "FROM space_list  "
                    + "WHERE Space_ID='"+space_id+"';");
            RightToRecives righttorecives = new RightToRecives();
            out.println("123");
            out.println(space_id);
            while(rs.next()){
                RightToRecive righttorecive = new RightToRecive(rs.getInt("Space_List_ID"), rs.getInt("Space_ID"), rs.getNString("Space_Text"));
                righttorecives.add(righttorecive);
                out.println(righttorecive.getSpace_text());
            }
            rs.close();
            request.setAttribute("RTR", righttorecives);
            pg.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(getEditRTR.class.getName()).log(Level.SEVERE, null, ex);
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
