package com.codewithraz.project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codewithraz.project.model.user;
import com.codewithraz.project.service.userService;

public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String message = "";
	private userService getuserService() {
		return userService.getuserService();
	}	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionType= request.getParameter("actiontype");
		
		if(actionType.equals("single")) {
			fetchSingleRecord(request, response);
		}
		else {
			fetchAllRecords(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("add"))
		{
			adduser(request, response);
		}
		else if(actionType.equals("edit"))
		{
			edituser(request, response);
		}
		else if (actionType.equals("delete"))
		{
			deleteuser(request,response);
		}
	}
	private void adduser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		clearMessage();
		user user = new user();
		user.setuName(request.getParameter("username"));
		user.setuPassword(request.getParameter("password"));
		user.setuEmail(request.getParameter("email"));
		user.setuContactNo(Integer.parseInt(request.getParameter("contactno")));
		user.setuCatagory(request.getParameter("jobcategory"));
		user.setuCountry(request.getParameter("country"));
		user.setuGender(request.getParameter("gender"));
		user.setuRole(request.getParameter("usertype"));
		
		
		try {
			if(getuserService().adduser(user))
			{
				message = "The user has been successfully added!";
			}
			else {
				message = "Failed to add the user!";
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			message = "operation failed! " + e.getMessage();
		}
		
		request.setAttribute("feebackMessage", message);
		RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
		rd.forward(request, response);
	}
	
	
	private void edituser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		clearMessage();
		user user = new user();
		user.setUid(Integer.parseInt(request.getParameter("userid")));
		user.setuPassword(request.getParameter("inputPassword"));
		user.setuEmail(request.getParameter("inputEmail"));
		user.setuContactNo(Integer.parseInt(request.getParameter("inputContactNo")));
		user.setuCatagory(request.getParameter("jobcategory"));
		user.setuCountry(request.getParameter("inputCountry"));
		user.setuGender(request.getParameter("status"));
		user.setuRole(request.getParameter("usertype"));
		
		try {
			if(getuserService().edituser(user))
			{
				message = "The record has been successfully updated! Product code:" + user.getUid();
			}
			else {
				message = "Failed to update the record! Product code:" + user.getUid();
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			message = "operation failed! " + e.getMessage();
		}
		
		request.setAttribute("feebackMessage", message);
		RequestDispatcher rd = request.getRequestDispatcher("search-and-update.jsp");
		rd.forward(request, response);
	}
	
	private void deleteuser(HttpServletRequest request, HttpServletResponse response)
	{
		
	}
	private void fetchSingleRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		clearMessage();
		String cat = request.getParameter("combo");
		
		try {
		  user user = getuserService().fetchSingleRecord(cat);
			
				request.setAttribute("user",user);
			
		} 
		catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		request.setAttribute("feebackMessage", message);
		RequestDispatcher rd = request.getRequestDispatcher("appointment.jsp");
		rd.forward(request, response);
		
	}
	private void fetchAllRecords(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		clearMessage();
		
		List<user> userList = new ArrayList<user>();
		try {
			userList = getuserService().fetchAllRecords();
			
			if(!(userList.size() > 0)) {
				message = "No record found!";
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		
		request.setAttribute("userList", userList);
		request.setAttribute("feebackMessage", message);
		
		RequestDispatcher rd = request.getRequestDispatcher("viewallrecords.jsp");
		rd.forward(request, response);

	}

	

	private void clearMessage() {
		message = "";
	}

}
