package com.codewithraz.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codewithraz.project.dao.dbutils.DbDriverManager;
import com.codewithraz.project.dao.dbutils.DbDriverManagerFactory;

public class jobseekerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int i;
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySQL");
		
		return driverManager.getConnection();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection connection = getConnection();
			i++;
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
			
			String query ="select name,email,country,role from user_details where job_catogory=?";
			
			PreparedStatement ps = connection.prepareStatement(query);
			
			 ps.setString(1, "inputJobCat");
			 ResultSet rs= ps.executeQuery();
			 
			 out.println("<table width=60% border= 1   >");
			out.println("<tr><td colspan=4 " );
			 out.println("<center><h2>Result of Search Page</h2></center>");	
			out.println("</td></tr>");
			 out.println("<tr>");
			out.println("<th>Employee id</th>");
			 out.println("<th>Employee name</th>");
			out.println("<th>Title</th>");
			out.println("<th>Address</th>");
			 out.println("</tr>");
              
              while(rs.next())
              {
            	  out.println("<tr>");
            	  out.println("<td>" + rs.getString("empid") + "</td> ");
            	  out.println("<td>" + rs.getString("fname") + "</td> ");
            	  out.println("<td>" + rs.getString("title") + "</td> ");
            	  out.println("<td>" + rs.getString("address") + "</td> ");
            	  out.println("</tr>");

                  
              }
              System.out.println("</table>");
        
               
		} catch (ClassNotFoundException | SQLException e) {
		}catch (Exception e) 
        { throw new ServletException("error", e); }
    }
		
	 public void destory()
	    {
	        i = 0;
	    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
