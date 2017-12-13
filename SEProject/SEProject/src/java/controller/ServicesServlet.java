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
import model.ShowService;
import model.ShowServices;

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "ServicesServlet", urlPatterns = {"/Services"})
public class ServicesServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            ResultSet rs = stmt.executeQuery("SELECT s.Space_ID, s.Space_Name, s.Space_Address, s.Space_Province, s.Space_District, s.Space_SubDistrict,"
                    + " m.Firstname, m.Lastname "
                    + "FROM space s  "
                    + "JOIN member m ON (m.Username = s.Username) WHERE s.Username !='"+session.getAttribute("username")+"' AND Space_Status='complete';");
            ShowServices services = new ShowServices();
            while(rs.next()){
                ShowService service = new ShowService();
                service.setSpace_id(rs.getInt("Space_ID"));
                service.setSpace_name(rs.getString("Space_Name"));
                service.setSpace_address(rs.getString("Space_Address")+" "+rs.getString("Space_District")+rs.getString("Space_SubDistrict")+" "+rs.getString("Space_Province"));
                service.setName(rs.getString("Firstname")+" "+rs.getString("Lastname"));
                services.add(service);
            }
            rs.close();
            request.setAttribute("services", services);
            RequestDispatcher pg = request.getRequestDispatcher("index.jsp");
            pg.forward(request, response);
            
        }} catch (SQLException ex) {
            Logger.getLogger(ServicesServlet.class.getName()).log(Level.SEVERE, null, ex);
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
