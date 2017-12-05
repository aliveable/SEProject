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
import model.Service;
import model.Services;

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
        
        try {
            Statement stmt = conn.createStatement();
            HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           int page = Integer.parseInt(request.getParameter("page"))-1;
            ResultSet rs = stmt.executeQuery("SELECT s.Space_ID, s.Space_Name, s.Space_Address, m.Firstname, m.Lastname "
                    + "FROM space s  "
                    + "JOIN member m ON (m.Username = s.Username) ORDER BY Space_ID DESC OFFSET "+page*10+" ROWS FETCH NEXT 10 ROWS ONLY;");
            Services services = new Services();
            while(rs.next()){
                Service service = new Service();
                service.setSpace_id(rs.getInt("Space_ID"));
                service.setSpace_name(rs.getString("Space_Name"));
                service.setSpace_address(rs.getString("Space_Address"));
                service.setName(rs.getString("Firstname")+" "+rs.getString("Lastname"));
                services.add(service);
            }
            session.setAttribute("services", services);
            rs = stmt.executeQuery("SELECT COUNT(Space_ID) row FROM space;");
            rs.next();
            int num_page = rs.getInt("row");
            if(num_page%10 == 0)
                num_page /= 10;
            else
                num_page = (num_page/10)+1;
            rs.close();
            session.setAttribute("num_page", num_page);
            RequestDispatcher pg = request.getRequestDispatcher("Service.jsp");
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
