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

/**
 *
 * @author khunach
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

    private String username;
    private String password;

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
            RequestDispatcher pg = request.getRequestDispatcher("Login.jsp");
            HttpSession session = request.getSession();
            try (PrintWriter out = response.getWriter()) {                
                username = request.getParameter("Username");
                password = request.getParameter("Password");
                if(username != null  && password != null){
                String sql = "SELECT Email, Firstname, Lastname, Password FROM member WHERE Username = '" + username + "';";
                ResultSet rs = stmt.executeQuery(sql);
                if (rs.next()) {
                    if (rs.getString("Password").equals(password)) {
                        session.invalidate();
                        session = request.getSession();
                        session.setAttribute("username", username);
                        session.setAttribute("first_name", rs.getString("Firstname"));
                        session.setAttribute("last_name", rs.getString("Lastname"));
                        session.setAttribute("email", rs.getString("Email"));
                        response.sendRedirect("./Services");
                        rs.close();
                        return;
                    } else {
                        session.invalidate();
                        session = request.getSession();
                        session.setAttribute("message", "noequals");
                        pg.forward(request, response);
                        rs.close();
                        return;
                    }
                }
                rs.close();
                session.invalidate();
                session = request.getSession();
                session.setAttribute("message", "nofound");
                pg.forward(request, response);
                return;
                }
                session.invalidate();
                pg.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
