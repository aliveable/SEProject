/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
@WebServlet(name = "ReserveInsertServlet", urlPatterns = {"/ReserveServlet"})
public class ReserveInsertServlet extends HttpServlet {

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
            PreparedStatement stmt = null;
            HttpSession session = request.getSession();
            try (PrintWriter out = response.getWriter()) {
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM/yyyy/dd HH:mm:ss");
                LocalDateTime now = LocalDateTime.now();
                int total_price = Integer.parseInt(request.getParameter("cost"));
                String[] periods = request.getParameterValues("period");
                String[] size = request.getParameterValues("people");
                String date = request.getParameter("date");
                int package_id = (int) session.getAttribute("package_id");
                String[] optionals = (String[]) session.getAttribute("optional");
                String dateTime = dtf.format(now);
                boolean canReserve = true;
                ResultSet rs;
                for (int i = 0; i < periods.length; i++) {
                    stmt = conn.prepareStatement("SELECT Package_LimitTime_Modify before FROM package WHERE Package_ID="+package_id+";");
                    rs = stmt.executeQuery();
                    rs.next();
                    int before = rs.getInt("before");
                    String hour = Integer.toString((Integer.parseInt(dateTime.substring(11, 13)) + before + 1) % 24);
                     String reserve_time = dateTime.substring(0, 11) + hour + dateTime.substring(13);
                        String limit_reserve = date + " " + periods[i];
                    if (hour.length() == 1) {
                        hour = "0" + hour;
                    }
                    if (reserve_time.compareTo(limit_reserve) == 1) {
                        rs.close();
                        canReserve = false;
                        out.println("<script>alert(\"" + date + " " + periods[i] + " is time up to reserve\");location=\"./PackageInformation?package=" + package_id + "\";</script>");
                        break;
                    }
                    stmt = conn.prepareStatement("SELECT SUM(p.Package_Size)/COUNT(r.Reserve_Size) pSize,"
                            + " SUM(Reserve_Size) rSize "
                            + "FROM reserve_space_time r"
                            + " JOIN package p ON (p.Package_ID = r.Package_ID)"
                            + " WHERE r.Package_ID=" + package_id + " AND Reserve_Time_FirstHour='" + date + " " + periods[i].substring(0, 5) + "'"
                            + " GROUP BY r.Package_ID;");
                    rs = stmt.executeQuery();
                    if (rs.next()) {
                        int max_size = rs.getInt("pSize");
                        int now_size = rs.getInt("rSize");
                        if ((now_size + Integer.parseInt(size[i])) > max_size) {
                            rs.close();
                            canReserve = false;
                            out.println("<script>alert(\"" + date + " " + periods[i] + " is not enough\");location=\"./PackageInformation?package=" + package_id + "\";</script>");
                            break;
                        }
                    }
                }
                if (canReserve) {
                    stmt = conn.prepareStatement("INSERT INTO reserve_space (Username, Space_ID, Package_ID, Reserve_Time, Reserve_Price, Reserve_Status)"
                            + " VALUES (?, ?, ?, ?, ?, ?)");
                    stmt.setString(1, (String) session.getAttribute("username"));
                    stmt.setInt(2, (int) session.getAttribute("space_id"));
                    stmt.setInt(3, (int) session.getAttribute("package_id"));
                    stmt.setString(4, dateTime);
                    stmt.setInt(5, total_price);
                    stmt.setString(6, "Ready");
                    stmt.executeUpdate();
                    stmt = conn.prepareStatement("SELECT Reserve_ID FROM reserve_space WHERE Username='"
                            + session.getAttribute("username") + "' AND Space_ID=" + session.getAttribute("space_id")
                            + " AND Package_ID=" + session.getAttribute("package_id") + " AND Reserve_Time='" + dateTime + "';");
                    rs = stmt.executeQuery();
                    rs.next();
                    int reserve_id = rs.getInt("Reserve_ID");
                    for (int i = 0; i < periods.length; i++) {
                        stmt = conn.prepareStatement("INSERT INTO reserve_space_time (Reserve_ID, Reserve_Time_FirstHour, Reserve_Time_LastHour, Reserve_Size, Package_ID) "
                                + "VALUES (?, ?, ?, ?, ?)");
                        stmt.setInt(1, reserve_id);
                        stmt.setString(2, date + " " + periods[i].substring(0, 5));
                        stmt.setString(3, date + " " + periods[i].substring(6));
                        stmt.setInt(4, Integer.parseInt(size[i]));
                        stmt.setInt(5, package_id);
                        stmt.executeUpdate();
                    }
                    if (optionals != null) {
                        for (String optional : optionals) {
                            stmt = conn.prepareStatement("INSERT INTO reserve_additional (Package_List_ID, Reserve_ID)"
                                    + " VALUES (?, ?)");
                            stmt.setInt(1, Integer.parseInt(optional));
                            stmt.setInt(2, reserve_id);
                            stmt.executeUpdate();
                        }
                    }
                    rs.close();
                    //out.println("<script>alert(\"Success\");location=\"./getReserve?id="+reserve_id+"\";</script>");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReserveInsertServlet.class.getName()).log(Level.SEVERE, null, ex);
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
