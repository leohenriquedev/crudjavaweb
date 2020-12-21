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
		driver = "com.mysql.cj.jdbc.Driver";
		url = "jdbc:mysql://localhost:3306/crudjavaweb?useTimezone=true&serverTimezone=UTC";
		username = "root";
		password = "";
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
