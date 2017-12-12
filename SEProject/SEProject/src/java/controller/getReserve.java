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
import model.Reserve;
import model.ReserveAdd;
import model.ReserveTime;
import model.RightToRecive;
import model.RightToRecives;

/**
 *
 * @author khunach
 */
@WebServlet(name = "getReserve", urlPatterns = {"/getReserve"})
public class getReserve extends HttpServlet {

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
            String id = request.getParameter("id");
            String rd = request.getParameter("");
            RequestDispatcher pg = request.getRequestDispatcher(rd);
            ResultSet rs = stmt.executeQuery("SELECT *"
                    + "FROM reserve_space  "
                    + "WHERE Reserve_ID='"+id+"';");
            rs.next();
            Reserve reserve = new Reserve(rs.getInt("Reserve_ID"), rs.getString("Username"), rs.getInt("Space_ID"), rs.getInt("Package_ID"), rs.getString("Reserve_Time"), rs.getInt("Reserve_Price"), rs.getString("Reserve_Status"));
            rs.close();
            rs = stmt.executeQuery("SELECT *"
                    + "FROM reserve_space_time  "
                    + "WHERE Reserve_ID='"+id+"';");
            while (rs.next()){
                ReserveTime reservetime = new ReserveTime(rs.getInt("Reserve_Time_ID"), rs.getInt("Reserve_ID"), rs.getString("Reserve_Time_FirstHour"), rs.getString("Reserve_Time_LastHour"), rs.getInt("Reserve_Size"), rs.getInt("Package_ID"));
                reserve.addReservetimes(reservetime);
            }
            rs.close();
            rs = stmt.executeQuery("SELECT *"
                    + "FROM reserve_additional"
                    + "WHERE Reserve_ID='"+id+"';");
            while (rs.next()){
                ReserveAdd reserveadd = new ReserveAdd(rs.getInt("Reserve_Add_ID"), rs.getInt("Package_List_ID"), rs.getInt("Reserve_ID"));
                reserve.addReserveadds(reserveadd);
            }
            rs.close();
            request.setAttribute("reserve", reserve);
            request.setAttribute("id", id);
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
