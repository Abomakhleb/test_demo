package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Database.AdminDAO;
import com.mysql.jdbc.ResultSet;

public class Accesspriority1 extends HttpServlet

{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException
		{
	String userid="",email="";
	HttpSession s=req.getSession();
	StringBuffer sb=new StringBuffer();
	String grade[]=req.getParameterValues("grades");
	if(grade==null)
	{
		RequestDispatcher rd=null;
		rd=req.getRequestDispatcher("/JSP/Admin/fileupload1.jsp");
		rd.forward(req, resp);
		
	}
	else
	{
		try
		{
			String username="";
			String u_email="",id="";
			String password="",ownerid="";
				for(int i=0;i<grade.length;i++)
				{	
					System.out.println("got value is :"+grade[i]);
					String s_no=grade[i];
		             int serial_no= AdminDAO.gets_no(s_no);
					
		             ResultSet rs=(ResultSet) AdminDAO.getUserdetails(serial_no);
					
		             while(rs.next())
					{
						 username=rs.getString(1);
						 u_email=rs.getString(2);
						 password=rs.getString(3);
						 System.out.println("user details:"+username+"| password:"+password+"| email:"+u_email);
					}
						
					
				}	}
		
		             catch (Exception e) {
							
						}
						
		           //  sb.append(grade[i]+"~");	
				}
					
	
		
		}
}
