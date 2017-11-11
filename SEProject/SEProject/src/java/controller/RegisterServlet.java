package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author Amoeba
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    Connection conn;

    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Statement stmt = conn.createStatement();
            try (PrintWriter out = response.getWriter()) {
                String first_name = request.getParameter("first_name");
                String last_name = request.getParameter("last_name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String address = request.getParameter("address") + " " + request.getParameter("district")
                        + " " + request.getParameter("sub_district") + " " + request.getParameter("province")
                        + " " + request.getParameter("postal_code");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String confirmed_password = request.getParameter("password_confirmation");
                ResultSet rs = stmt.executeQuery("SELECT Username FROM member WHERE Username ='" + username + "';");
                if (!rs.next()) {
                    if (password.equals(confirmed_password)) {
                        stmt.executeUpdate("insert into member(Username, Password, Firstname, Lastname, Phone, Email, Address) values "
                                + "('" + username + "', '" + password + "', '" + first_name + "', '" + last_name + "', '" + phone + "', '" + email + "', '" + address + "');");
                        rs.close();
                        out.println("<script>alert(\"สมัครสำเร็จ\");</script>");
                    } else {
                        rs.close();
                        out.println("<script>alert(\"รหัสผ่านไม่ตรงกัน\");</script>");
                    } 
                } else {
                    rs.close();
                    out.println("<script>alert(\"usernameนี้มีคนใช้แล้ว\");</script>");
                    
                }
            }} catch (SQLException ex) {
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
