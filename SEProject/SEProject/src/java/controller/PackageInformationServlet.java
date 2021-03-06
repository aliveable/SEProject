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
 * @author Amoeba
 */
@WebServlet(name = "PackageInformationServlet", urlPatterns = {"/PackageInformation"})
public class PackageInformationServlet extends HttpServlet {

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
            RequestDispatcher pg = request.getRequestDispatcher("PackageInformation.jsp");
            try (PrintWriter out = response.getWriter()) {
                String package_id = request.getParameter("package");

                PackageInfo pkInfo = new PackageInfo();

                String sql = "SELECT Package_Pic_Path FROM package_pic WHERE Package_ID = " + package_id + ";";
                ResultSet rs = stmt.executeQuery(sql);
                String[] pics = new String[3];
                int i = 0;
                while (rs.next()) {
                    pics[i] = rs.getString("Package_Pic_Path");
                    i++;
                }
                rs.close();
                pkInfo.setPics(pics);

                rs = stmt.executeQuery("SELECT Package_Name, Package_Desc, Package_Price, Package_Size, Package_LimitTime_Modify,"
                        + " Package_OpenHour, Package_LastHour, Package_ID, Space_ID FROM package WHERE Package_ID=" + package_id + ";");
                if (rs.next()) {
                    pkInfo.setClose(rs.getString("Package_LastHour"));
                    pkInfo.setDesc(rs.getString("Package_Desc"));
                    pkInfo.setName(rs.getString("Package_Name"));
                    pkInfo.setOpen(rs.getString("Package_OpenHour"));
                    pkInfo.setPrice(rs.getString("Package_Price"));
                    pkInfo.setReserve_before(rs.getString("Package_LimitTime_Modify"));
                    pkInfo.setSize(rs.getString("Package_Size"));
                    pkInfo.setPackage_id(rs.getInt("Package_ID"));
                    request.setAttribute("pkInfo", pkInfo);
                    session.setAttribute("package_id", rs.getInt("Package_ID"));
                    session.setAttribute("space_id", rs.getInt("Space_ID"));
                } else {
                    pg = request.getRequestDispatcher("AuthenError.jsp");
                }
                rs.close();
                sql = "SELECT * FROM package_list WHERE Package_ID = " + package_id + ";";
                rs = stmt.executeQuery(sql);
                Includes inc = new Includes();
                Includes opt = new Includes();
                while (rs.next()){
                    if (rs.getInt("Package_List_Price") == 0) {
                    Include include = new Include(rs.getInt("Package_List_ID"), rs.getInt("Package_ID"), rs.getString("Package_Text"));
                    inc.add(include);
                } else {
                    Include include = new Include(rs.getInt("Package_List_ID"), rs.getInt("Package_ID"), rs.getString("Package_Text"), rs.getInt("Package_List_Price"));
                    opt.add(include);
                }
                }
                request.setAttribute("inc", inc);
                request.setAttribute("opt", opt);
                pg.forward(request, response);
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(PackageInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
