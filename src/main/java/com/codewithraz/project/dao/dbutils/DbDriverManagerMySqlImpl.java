package com.codewithraz.project.dao.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbDriverManagerMySqlImpl implements DbDriverManager {




	public Connection getConnection() throws ClassNotFoundException, SQLException {

		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url ="jdbc:mysql://127.0.0.1:3306/career_first";
		String userName ="root";
		String password = "W@2915djkq#";
		
	
		return DriverManager.getConnection(url, userName, password);
	}

}
