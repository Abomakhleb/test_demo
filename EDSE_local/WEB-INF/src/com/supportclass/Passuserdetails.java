
package com.supportclass;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Passuserdetails extends HttpServlet 
{
	public void service(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		RequestDispatcher rd=null;
		HttpSession session = request.getSession( true );  
	       if ( session.getAttribute( "waitPage" ) == null ) 
	       {  
	    	   session.setAttribute( "waitPage", Boolean.TRUE );  
	    	   PrintWriter out = response.getWriter();  
	    	   out.println( "<html><head>" );  
	    	   out.println( "<title>Please Wait...</title>" );  
	       	   out.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
	    	   out.println( "</head><body bgcolor=''>" );  
	    	   out.println( "<br><br><br>" );
	    	   out.println( "<center><br><br>" );
	    	   out.println("<font color=white size=5>");
	    	   out.println( "Your userid and password  Has been Downloaded to your local system<br>  " );
	    	   out.println( "Thank You....</h1></center"); 
	    	   out.println("</font>");
	    	   out.close();  
	       }  
	       else 
	       { 
	    	   session.removeAttribute( "waitPage" );  
		try
		{
			String fileNames = request.getParameter("fileNames");
			String download = request.getParameter("download");
			response.sendRedirect(request.getContextPath()+"/DownloadFiletwo?fileNames="+fileNames+"&download=true");
			
			
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}}
}
