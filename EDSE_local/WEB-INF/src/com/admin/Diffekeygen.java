package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Database.UserDAO;
import com.diffie.Main;

public class Diffekeygen extends HttpServlet
{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
		{
	
String ownerid=	request.getParameter("ownerid");
System.out.println("owner id i s>>>>>>>>>>>>>>>>>>>>>"+ownerid);
	String filepathalice=request.getRealPath("")+"\\secretkey\\alice.txt";
	
	String filepathbob=request.getRealPath("")+"\\secretkey\\bob.txt";
	boolean flag=Main.keygen(filepathalice,filepathbob,ownerid);
	RequestDispatcher rd;
	
	if(flag)
	{
		rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=7");
		rd.forward(request, response);
	}else
	{
		rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=8");
		rd.forward(request, response);
	}
	
}
}
