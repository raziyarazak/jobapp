package com.codewithraz.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codewithraz.project.dao.adminImpl;
import com.codewithraz.project.dao.scheduleImpl;
import com.codewithraz.project.model.admin;
import com.codewithraz.project.model.schedule;
/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		admin admin = new admin();
		
		admin.setEmail(email);
		admin.setPassword(password);
		
		

		 adminImpl adminImpl = new adminImpl();
		 try
			{
				String userValidate = adminImpl.authenticateUser(admin);

				if(userValidate.equals("Jobseeker_Role"))
				{
					

					HttpSession session = request.getSession();
					session.setAttribute("jobseeker", email);
					request.setAttribute("email", email);

					request.getRequestDispatcher("jobseeker.jsp").forward(request, response);
				}
				else if(userValidate.equals("Consultant_Role"))
				{
					

					HttpSession session = request.getSession();
					
					
					session.setAttribute("consultant", email);
					
					request.setAttribute("email", email);

					request.getRequestDispatcher("consultant.jsp").forward(request, response);
					
					 
				}
				else
				{
					System.out.println("Error message = "+userValidate);
					request.setAttribute("errMessage", userValidate);

					request.getRequestDispatcher("signin.jsp").forward(request, response);
				}
			}
			catch (IOException e1)
			{
				e1.printStackTrace();
			}
			catch (Exception e2)
			{
				e2.printStackTrace();
			}
		} //End of doPost()
	}


