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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Amoeba
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
                String first_name = request.getParameter("first_name");
                String last_name = request.getParameter("last_name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String district = request.getParameter("district");
                String sub_district = request.getParameter("sub_district");
                String province = request.getParameter("province");
                String postal_code = request.getParameter("postal_code");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String confirmed_password = request.getParameter("password_confirmation");
                ResultSet rs = stmt.executeQuery("SELECT Username FROM member WHERE Username ='" + username + "';");
                if (!rs.next()) {
                    stmt.executeUpdate("insert into member(Username, Password, Firstname, Lastname, Phone, Email, Address, District, SubDistrict, Province, PostalCode) "
                            + "values (N'" + username + "', N'" + password + "', N'" + first_name + "', N'" + last_name +
                            "', N'" + phone + "', N'" + email + "', N'" + address + "', N'"+district+"', N'"+ sub_district +
                            "', N'" + province + "', N'"+ postal_code + "');");
                    rs.close();
                    session.setAttribute("type", "สมัครสมาชิกเสร็จเรียบร้อย");
                    response.sendRedirect("Login");
                    return;
                } else {
                    rs.close();
                    session.setAttribute("type", "usernameมีคนใช้เเล้ว");
                    RequestDispatcher pg = request.getRequestDispatcher("RegisterJSP.jsp");
                    pg.forward(request, response);
                    return;
                }
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
