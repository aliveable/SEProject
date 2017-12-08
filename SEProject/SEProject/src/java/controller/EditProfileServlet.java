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
 * @author Amoeba
 */
@WebServlet(name = "EditProfileServlet", urlPatterns = {"/EditProfileServlet"})
public class EditProfileServlet extends HttpServlet {

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
                String first_name = request.getParameter("first_name");
                String last_name = request.getParameter("last_name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String district = request.getParameter("district");
                String sub_district = request.getParameter("sub_district");
                String province = request.getParameter("province");
                String postal_code = request.getParameter("postal_code");
                String password = request.getParameter("password");
                String confirm_password = request.getParameter("confirm_password");
                ResultSet rs = stmt.executeQuery("SELECT Password FROM member WHERE Username ='"+session.getAttribute("username")+"';");
                rs.next();
                if(password.equals(confirm_password) && password.equals(rs.getString("Password"))){
                    rs.close();
                    stmt.executeUpdate("Update member SET Firstname='"+first_name+"', Lastname='"+last_name+"', Phone='"+phone+"', Email='"+email+"', "
                            + "Address='"+address+"', District='"+district+"', SubDistrict='"+sub_district+"', Province='"+province+"', PostalCode='"
                            +postal_code+"' WHERE Username='"+session.getAttribute("username")+"';");
                    session.setAttribute("first_name", first_name);
                    session.setAttribute("last_name", last_name);
                    session.setAttribute("email", email);
                    session.setAttribute("phone", phone);
                    session.setAttribute("address", address);
                    session.setAttribute("district", district);
                    session.setAttribute("sub_district", sub_district);
                    session.setAttribute("province", province);
                    session.setAttribute("postal_code", postal_code);
                    out.println("<script>alert(\"Success\");location=\"./Profile\";</script>");
                }else{
                    rs.close();
                    out.println("<script>alert(\"Password Invalid\");history.go(-1);</script>");
                }      
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
