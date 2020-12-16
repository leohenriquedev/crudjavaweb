package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private Connection conn;
	
	public Connection getConnection() {
		try {
			if(this.conn != null) { 
				return this.conn;
			}
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/crudjavaweb?useTimezone=true&serverTimezone=UTC", "root", "");
			
		} catch(Exception error) {
			throw new RuntimeException("Error: " + error);
		}
	}

}
