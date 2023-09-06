package com.codewithraz.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.codewithraz.project.dao.dbutils.DbDriverManager;
import com.codewithraz.project.dao.dbutils.DbDriverManagerFactory;
import com.codewithraz.project.model.admin;
import com.codewithraz.project.model.user;

public class adminImpl  {

	public adminImpl() {
		// TODO Auto-generated constructor stub
	}
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySQL");
		
		return driverManager.getConnection();
	}
	public String authenticateUser(admin admin) throws ClassNotFoundException
	{
		String email = admin.getEmail();
		String password = admin.getPassword();
		

		
		Connection connection = null;
	
		Statement statement = null;
	
		ResultSet resultSet = null;
		
		String emailDB = "";
		String passwordDB = "";
		String roleDB = "";

		try
		{
		    connection = getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("SELECT email,password,role FROM user_details");

			while(resultSet.next())
			{
				emailDB = resultSet.getString("email");
				passwordDB = resultSet.getString("password");
				roleDB = resultSet.getString("role");

				if(email.equals(emailDB) && password.equals(passwordDB) && roleDB.equals("jobseeker"))
				return "Jobseeker_Role";
				else if(email.equals(emailDB) && password.equals(passwordDB) && roleDB.equals("consultant"))
				return "Consultant_Role";
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
	
	
		
		
	}

