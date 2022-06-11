package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Database.UserDAO;

public class HashkeyGeneration extends HttpServlet
{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
		{
	boolean flag=UserDAO.hashKeyGeneration();
	RequestDispatcher rd;
	
	if(flag)
	{
		rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=3");
		rd.forward(request, response);
	}else
	{
		rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=4");
		rd.forward(request, response);
	}
	
}
}
