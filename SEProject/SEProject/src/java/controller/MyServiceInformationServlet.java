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
import model.PackageInfo;
import model.PackageInfos;
import model.RightToRecive;
import model.RightToRecives;
import model.ServiceDesc;

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "MyServiceInformationServlet", urlPatterns = {"/MyServiceInformation"})
public class MyServiceInformationServlet extends HttpServlet {

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
            int checklist = 0;
            int checkpic = 0;
            int checkpackage = 0;
            Statement stmt = conn.createStatement();
            HttpSession session = request.getSession();
            RequestDispatcher pg = request.getRequestDispatcher("MyServiceInformation.jsp");
            try (PrintWriter out = response.getWriter()) {
                String id;
                id = request.getParameter("id");
                ResultSet rs = stmt.executeQuery("SELECT Space_ID, Space_Name, Space_Desc, Space_Address, Space_District, Space_SubDistrict, "
                        + "Space_Province, Space_PostalCode, Space_Status "
                        + "FROM space WHERE (Space_ID=" + id + " AND Username='" + session.getAttribute("username") + "');");
                if (rs.next()) {
                    ServiceDesc desc = new ServiceDesc();
                    desc.setAddress(rs.getString("Space_Address"));
                    desc.setDesc(rs.getString("Space_Desc"));
                    desc.setDistrict(rs.getString("Space_District"));
                    desc.setId(rs.getInt("Space_ID"));
                    desc.setName(rs.getString("Space_Name"));
                    desc.setPostal_code(rs.getString("Space_PostalCode"));
                    desc.setProvince(rs.getString("Space_Province"));
                    desc.setStatus(rs.getString("Space_Status"));
                    desc.setSub_district(rs.getString("Space_SubDistrict"));
                    rs = stmt.executeQuery("SELECT *"
                            + "FROM space_list  "
                            + "WHERE Space_ID='" + id + "';");
                    RightToRecives righttorecives = new RightToRecives();
                    while (rs.next()) {
                        checklist = 1;
                        RightToRecive righttorecive = new RightToRecive(rs.getInt("Space_List_ID"), rs.getInt("Space_ID"), rs.getNString("Space_Text"));
                        righttorecives.add(righttorecive);
                    }
                    rs.close();
                    String sql = "SELECT Space_Pic_Path FROM space_pic WHERE Space_ID = " + desc.getId() + ";";
                    rs = stmt.executeQuery(sql);
                    String[] pics = new String[5];
                    int i = 0;
                    while (rs.next()) {
                        checkpic = 1;
                        pics[i] = rs.getString("Space_Pic_Path");
                        i++;
                    }
                    rs.close();
                    rs = stmt.executeQuery("SELECT Package_Name, Package_Price, Package_Desc, Package_ID FROM package WHERE Space_ID=" + id + ";");
                    PackageInfos pkInfo = new PackageInfos();
                    while (rs.next()) {
                        checkpackage = 1;
                        PackageInfo info = new PackageInfo();
                        info.setName(rs.getString("Package_Name"));
                        info.setPrice(rs.getString("Package_Price"));
                        info.setPackage_id(rs.getInt("Package_ID"));
                        info.setDesc(rs.getString("Package_Desc"));
                        pkInfo.add(info);
                    }
                    rs.close();

                    for (PackageInfo info : pkInfo.getPkInfo()) {
                        String sql2 = "SELECT Package_Pic_Path FROM package_pic WHERE Package_ID = " + info.getPackage_id() + ";";

                        rs = stmt.executeQuery(sql2);

                        String[] pics2 = new String[5];
                        int j = 0;
                        while (rs.next()) {
                            pics2[j] = rs.getString("Package_Pic_Path");
                            j++;
                        }
                        rs.close();
                        
                        info.setPics(pics2);
                    }
                    if (checklist == 1 && checkpackage == 1 && checkpic == 1){
                        stmt.executeUpdate("Update space SET Space_Status=N'complete' WHERE Space_ID='"+id+"';");
                        desc.setStatus("complete");
                        out.println("yes");
                    }else{
                        stmt.executeUpdate("Update space SET Space_Status=N'Incomplete' WHERE Space_ID='"+id+"';");
                        desc.setStatus("Incomplete");
                        out.println("no");
                    }
                    
                    request.setAttribute("pkInfo", pkInfo);
                    desc.setPics(pics);
                    request.setAttribute("RTR", righttorecives);
                    session.setAttribute("desc", desc);
                    
                } else {
                    pg = request.getRequestDispatcher("AuthenError.jsp");
                }
                pg.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MyServiceInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
