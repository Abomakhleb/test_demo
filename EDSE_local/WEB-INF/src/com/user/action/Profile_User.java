/**
 * 
 */
package com.user.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Database.UserDAO;





public class Profile_User extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			System.out.println("================Profile ======");
			HttpSession s = request.getSession();
			String id = s.getAttribute("userid").toString();
			
			System.out.println("User Id:"+id);
			
			ResultSet rs=UserDAO.getProfile(id);
			if(rs.next())
			{
				System.out.println("================Profile nomber 0 ======");
				
				rs=UserDAO.getProfile(id);
				request.setAttribute("rs",rs);
				request.setAttribute("user",id);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/profile.jsp?noy=0");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/User/profile.jsp?noy=1");
				rd.forward(request, response);
				
				
				
				
			System.out.println("================Profile nomber 1 ======");
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in UserProfile Servlet......"+e);
			out.println("Opps's Error is in AdminProfile Servlet......"+e);
		}
	}
}
