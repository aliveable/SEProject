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
import java.util.ArrayList;
import java.util.List;
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

/**
 *
 * @author Amoeba
 */
@WebServlet(name = "ReserveServlet", urlPatterns = {"/Reserve"})
public class ReserveViewControl extends HttpServlet {

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
                RequestDispatcher pg = request.getRequestDispatcher("Reserve.jsp");
                HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");
            ResultSet rs = stmt.executeQuery("SELECT Package_Price, Package_OpenHour, Package_LastHour FROM package WHERE Package_ID="+id+";");
            rs.next();
            PackageInfo pkInfo = new PackageInfo();
            pkInfo.setPrice(rs.getString("Package_Price"));            
            pkInfo.setOpen(rs.getString("Package_OpenHour"));
            pkInfo.setClose(rs.getString("Package_LastHour"));
            rs.close();
            List<String> period = new ArrayList<String>();  
           while(!pkInfo.getOpen().substring(0, 2).equals(pkInfo.getClose().substring(0, 2))){
                
                String end = Integer.toString(Integer.parseInt(pkInfo.getOpen().substring(0, 2))+1);     
                if(end.equals("24"))
                    end = "00";    
                if(end.length() == 1)
                    end = "0"+end;
                end = end+pkInfo.getOpen().substring(2);
                period.add(pkInfo.getOpen()+"-"+end);
                pkInfo.setOpen(end);
            }
            int optional_price=0;
            String where="WHERE ";
            String[] optionals = request.getParameterValues("optional");
            if(optionals != null){
            for(String optional:optionals){
                where +=" Package_List_ID="+optional+" OR";
            }
            where = where.substring(0, where.length()-3)+";";
            rs = stmt.executeQuery("SELECT Package_List_Price FROM package_list "+where);
            while(rs.next()){
                optional_price += rs.getInt("Package_List_Price");
            }
            }
            rs.close();
            request.setAttribute("optional_price", optional_price);
            request.setAttribute("period", period);
            request.setAttribute("price", pkInfo.getPrice());
            session.setAttribute("optional", optionals);
            pg.forward(request, response);
        }} catch (SQLException ex) {
            Logger.getLogger(ReserveViewControl.class.getName()).log(Level.SEVERE, null, ex);
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
