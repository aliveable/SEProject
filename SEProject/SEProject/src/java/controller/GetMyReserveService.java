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
import model.Reserve;
import model.Reserves;

/**
 *
 * @author khunach
 */
@WebServlet(name = "GetMyReserveService", urlPatterns = {"/GetMyReserveService"})
public class GetMyReserveService extends HttpServlet {

    private Connection conn;

    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8"); 
        try (PrintWriter out = response.getWriter()) {
           Statement stmt = conn.createStatement();
            RequestDispatcher pg = request.getRequestDispatcher("BookingAndHistory.jsp");
            HttpSession session = request.getSession();
            ResultSet rs = stmt.executeQuery("SELECT r.Reserve_ID, r.Username, r.Space_ID, r.Package_ID, r.Reserve_Time, r.Reserve_Price, r.Reserve_Status, p.Package_Name, s.Space_Name\n" +
"                    FROM reserve_space r JOIN space s ON (r.Space_ID = s.Space_ID) JOIN package p ON (r.Package_ID = p.Package_ID)\n" +
"                    WHERE s.Username='"+session.getAttribute("username")+"' and Reserve_Status='Ready';");
            Reserves reserves = new Reserves();
            while (rs.next()){
                Reserve reserve = new Reserve(rs.getInt("Reserve_ID"), rs.getString("Username"), rs.getInt("Space_ID"), rs.getInt("Package_ID"), rs.getString("Reserve_Time"), rs.getInt("Reserve_Price"), rs.getString("Reserve_Status"), "", rs.getString("Space_Name"), rs.getString("Package_Name"));
                reserves.add(reserve);
            }
            rs.close();
            request.setAttribute("reserves", reserves);
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
