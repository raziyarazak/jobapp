package com.codewithraz.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.codewithraz.project.model.Consultant;

public class ConsultantController {
	
	    public List<Consultant> getConsultantsByCategory(String category) {
	        List<Consultant> consultants = new ArrayList<>();
	      
	        	        try {
	        	            // Initialize database connection
	        	            Class.forName("com.mysql.jdbc.Driver");
	        	            Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_first", "root", "W@2915djkq#");

	        	            // Execute the SQL query
	        	            PreparedStatement pst = con.prepareStatement("SELECT id_no, name, country, email, gender FROM user_details WHERE job_catogory=? AND role IN ('consultant')");
	        	            pst.setString(1, category);
	        	            ResultSet rs = pst.executeQuery();

	        	            // Populate consultants list
	        	            while (rs.next()) {
	        	            	Consultant consultant = new Consultant();
	        	                consultant.setId_no(rs.getInt("id_no"));
	        	                consultant.setName(rs.getString("name"));
	        	                consultant.setCountry(rs.getString("country"));
	        	                consultant.setEmail(rs.getString("email"));
	        	                consultant.setGender(rs.getString("gender"));
	        	                consultants.add(consultant);
	        	            }

	        	            // Close resources (connection, statement, result set)
	        	            rs.close();
	        	            pst.close();
	        	            con.close();

	        	        } catch (SQLException | ClassNotFoundException ex) {
	        	            ex.printStackTrace();
	        	        }

	        	        return consultants;
	        	    }
	        	

	            
	      
	    }
	


