package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private Connection conn;
	private String driver;
	private String url;
	private String username;
	private String password;
	
	public ConnectionFactory() {
		driver = "org.postgresql.Driver";
		url = "jdbc:postgresql://localhost:5432/java-ee";
		username = "postgres";
		password = "root";
	}
	
	public Connection getConnection() {
		try {
			if(conn != null) { 
				return conn;
			}
			Class.forName(driver);
			return DriverManager.getConnection(url, username, password);
			
		} catch(Exception error) {
			throw new RuntimeException("Error: " + error);
		}
	}

}
