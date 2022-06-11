
package com.user.action;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Database.UserDAO;


public class UserLogin extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		
		try
		{
		RequestDispatcher rd=null;
		String sunmit = request.getParameter("Signin");
		System.out.println("got value of submit :"+sunmit);
		
		
			HttpSession s = request.getSession();
			
			
			String uid = request.getParameter("userid");
			System.out.println("got value of submit :"+uid);
			String pass = request.getParameter("password");
			System.out.println("got value of submit :"+pass);
			boolean f = UserDAO.checkUser(uid,pass);
			
			if(f)
			{
				
			  s.setAttribute("userid", uid);
				rd = request.getRequestDispatcher("JSP/User/userhome.jsp");
				rd.forward(request, response);
				
				
			}
			else
			{
				
				rd = request.getRequestDispatcher("user.jsp?no=1");
				rd.forward(request, response);
				
			}
		
		} catch (IOException | ServletException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		
	}
}
