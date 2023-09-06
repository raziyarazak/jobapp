package com.codewithraz.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.codewithraz.project.dao.dbutils.DbDriverManager;
import com.codewithraz.project.dao.dbutils.DbDriverManagerFactory;
import com.codewithraz.project.model.schedule;
import com.codewithraz.project.model.user;

public class scheduleImpl {

	public scheduleImpl() {
		// TODO Auto-generated constructor stub
	}

	private Connection getConnection() throws ClassNotFoundException, SQLException {
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySQL");
		
		return driverManager.getConnection();
	}
	
public boolean addschedule(schedule schedule) throws ClassNotFoundException, SQLException {
Connection connection = getConnection();
		
		String query ="INSERT INTO schedule (name,email,job_category,country,date_time)VALUES(?,?,?,?,?)";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, schedule.getName());
		ps.setString(2,schedule.getEmail());
		ps.setString(3,schedule.getJobcategory());
		ps.setString(4,schedule.getCountry());
		ps.setDate(5,schedule.getDatetime());
		boolean result = false;
		
		if(ps.executeUpdate()>0)
			result = true;
				
		ps.close();
		connection.close();
		return result;
		
	}
		
		
	

}	
		