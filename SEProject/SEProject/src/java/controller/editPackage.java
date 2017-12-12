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
import model.Include;
import model.Includes;
import model.PackageInfo;

/**
 *
 * @author khunach
 */
@WebServlet(name = "editPackage", urlPatterns = {"/editPackage"})
public class editPackage extends HttpServlet {

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
            HttpSession session = request.getSession();
            RequestDispatcher pg = request.getRequestDispatcher("EditPackage.jsp");
            String id;
            id = request.getParameter("id");
            ResultSet rs = stmt.executeQuery("SELECT * From package where Package_ID='" + id + "';");
            rs.next();
            PackageInfo packageItem = new PackageInfo(rs.getInt("Package_ID"), rs.getString("Package_Name"), rs.getString("Package_Desc"), rs.getString("Package_Price"), rs.getString("Package_LimitTime_Modify"), rs.getString("Package_OpenHour"), rs.getString("Package_LastHour"), rs.getString("Package_Size"));
            rs.close();

            String sql = "SELECT Package_Pic_Path FROM package_pic WHERE Package_ID = " + packageItem.getPackage_id() + ";";
            rs = stmt.executeQuery(sql);
            String[] pics = new String[3];
            int i = 0;
            while (rs.next()) {
                pics[i] = rs.getString("Package_Pic_Path");
                i++;
            }
            rs.close();

            sql = "SELECT * FROM package_list WHERE Package_ID = " + packageItem.getPackage_id() + ";";
            rs = stmt.executeQuery(sql);
            Includes inc = new Includes();
            Includes opt = new Includes();
            while (rs.next()) {
                if (rs.getInt("Package_List_Price") == 0) {
                    Include include = new Include(rs.getInt("Package_List_ID"), rs.getInt("Package_ID"), rs.getString("Package_Text"));
                    inc.add(include);
                } else {
                    Include include = new Include(rs.getInt("Package_List_ID"), rs.getInt("Package_ID"), rs.getString("Package_Text"), rs.getInt("Package_List_Price"), rs.getInt("Package_List_Max"));
                    opt.add(include);
                }
            }
            packageItem.setPics(pics);
            session.setAttribute("package", packageItem);
            session.setAttribute("includes", inc);
            session.setAttribute("options", opt);
            pg.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(editPackage.class.getName()).log(Level.SEVERE, null, ex);
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
