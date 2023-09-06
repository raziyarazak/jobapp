package com.codewithraz.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codewithraz.project.model.user;

/**
 * Servlet implementation class retrievedata
 */
public class retrievedata extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int i;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            i++;
	            PrintWriter out = response.getWriter();
	            response.setContentType("text/html");
	            String jobcatogary= request.getParameter("combo");

	            Class.forName("com.mysql.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_first","root","W@2915djkq#");
	            pst = con.prepareStatement("SELECT id_no, name, country, email,gender FROM user_details WHERE job_catogory=? AND role IN ('consultant')");
	            pst.setString(1, jobcatogary);
	            rs = pst.executeQuery();
	             
	             out.println("<table width=60% border= 1>");
	             out.println("<tr><td colspan=6" );
	             out.println("<center><h3>Consultant Result</h3></center>");	
	             out.println("</td></tr>");
	             out.println("<tr>");
	             out.println("<th>Consultant id</th>");
	             out.println("<th>Consultant name</th>");
	             out.println("<th>Country</th>");
	             out.println("<th>Email</th>");
	             out.println("<th>Gender</th>");
	             out.println("<th>Appointment</th>");
	            
	             out.println("</tr>");
	              
	              while(rs.next())
	              {
	                  out.println("<tr>");
	                  out.println("<td>" + rs.getString("id_no") + "</td> ");
	                  out.println("<td>" + rs.getString("name") + "</td> ");
	                  out.println("<td>" + rs.getString("country") + "</td> ");
	                  out.println("<td>" + rs.getString("email") + "</td> ");
	                  out.println("<td>" + rs.getString("gender") + "</td> ");
	                  
	                 out.println("<td><a href=appointment.jsp> Appointment</a></td>");
	                 out.println("<input type='hidden' name='actiontype' value='single'/>");
	                 
	                  out.println("</tr>");
	              }
	              
	             out.println("</table>");
	            
	            
	               } 
	            catch (ClassNotFoundException ex) {
	           
	        }catch (Exception e) 
	        { throw new ServletException("error", e); }
	    }
	
	    
	    public void destory()
	    {
	        i = 0;
	    }
	
	    private void fetchAllRecords(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	    {
	    	 try {
		            i++;
		            PrintWriter out = response.getWriter();
		            response.setContentType("text/html");
		            String jobcatogary= request.getParameter("combo");

		            Class.forName("com.mysql.jdbc.Driver");
		            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_first","root","W@2915djkq#");
		            pst = con.prepareStatement("SELECT id_no, name, country, email,gender FROM user_details WHERE job_catogory=? AND role IN ('consultant')");
		            pst.setString(1, jobcatogary);
		            rs = pst.executeQuery();
		            
		         
		             
		             out.println("<table width=60% border= 1>");
		             out.println("<tr><td colspan=6" );
		             out.println("<center><h3>Consultant Result</h3></center>");	
		             out.println("</td></tr>");
		             out.println("<tr>");
		             out.println("<th>Consultant id</th>");
		             out.println("<th>Consultant name</th>");
		             out.println("<th>Country</th>");
		             out.println("<th>Email</th>");
		             out.println("<th>Gender</th>");
		             out.println("<th>Appointment</th>");
		            
		             out.println("</tr>");
		              
		              while(rs.next())
		              {
		                  out.println("<tr>");
		                  out.println("<td>" + rs.getString("id_no") + "</td> ");
		                  out.println("<td>" + rs.getString("name") + "</td> ");
		                  out.println("<td>" + rs.getString("country") + "</td> ");
		                  out.println("<td>" + rs.getString("email") + "</td> ");
		                  out.println("<td>" + rs.getString("gender") + "</td> ");
		                  
		                 out.println("<td><a href=appointment.jsp> Appointment</a></td>");
		                 
		                  out.println("</tr>");
		              }
		              
		             out.println("</table>");
		             
		            out.println( "Welcome <%=request.getAttribute('email') %>");
		            
		               } 
		            catch (ClassNotFoundException ex) {
		           
		        }catch (Exception e) 
		        { throw new ServletException("error", e); }
		    }
		
	
		


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
