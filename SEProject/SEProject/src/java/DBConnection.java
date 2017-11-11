/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author khunach
 */

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    
    public static void main(String[] args) {

		String connectionUrl = "jdbc:sqlserver://seprojectserver.database.windows.net:1433;"
                        + "database=SEdatabase;user=adminse@seprojectserver;password={Topucarry123};"
                        + "encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";

		try {
			// Load SQL Server JDBC driver and establish connection.
			System.out.print("Connecting to SQL Server ... ");
			try (Connection connection = DriverManager.getConnection(connectionUrl)) {
				System.out.println("Done.");
			}
		} catch (Exception e) {
			System.out.println();
			e.printStackTrace();
		}
	}
}
