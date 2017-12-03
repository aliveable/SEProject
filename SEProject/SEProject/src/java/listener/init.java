/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author Amoeba
 */
public class init implements ServletContextListener{

    private static String connectionUrl;
    private static Connection con_send;
  
    
//    public static void main(String []args){
//        connectionUrl = "jdbc:sqlserver://seprojectserver.database.windows.net:1433;"
//                        + "database=SEdatabase;user=adminse@seprojectserver;password={Topucarry123};"
//                        + "encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;Pooling=True;";
//            try (Connection conn = DriverManager.getConnection(connectionUrl);){
//
//
//                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//
//                con_send = DriverManager.getConnection(connectionUrl);
//               // sce.getServletContext().setAttribute("connection", con_send);
//                System.out.println("listener.init.main()success");
//
//            } catch (ClassNotFoundException ex) {
//                Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
//            } catch (SQLException ex) {
//                Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
//            }
//    }

    @Override
       public void contextInitialized(ServletContextEvent sce) {
           connectionUrl = "jdbc:sqlserver://seprojectserver.database.windows.net:1433;"
                        + "database=SEdatabase;user=adminse@seprojectserver;password={Topucarry123};"
                        + "encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;Pooling=True;";
            try (Connection conn = DriverManager.getConnection(connectionUrl);){


                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                con_send = DriverManager.getConnection(connectionUrl);
                sce.getServletContext().setAttribute("connection", con_send);
                System.out.println("listener.init.main()success");

            } catch (ClassNotFoundException ex) {
                Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
            }
       }

       @Override
       public void contextDestroyed(ServletContextEvent sce) {
           throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
       }
       
}


