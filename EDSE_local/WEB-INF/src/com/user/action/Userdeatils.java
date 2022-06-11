
package com.user.action;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Database.UserDAO;
import com.supportclass.ReadFile;



public class Userdeatils extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		
		System.out.println("its came into aggregatekey");
		String loginmname="";
		
		try
		{
			
		
			 String  mail=request.getParameter("mail");
		    
       System.out.println("mail is "+mail);
       
       
      ResultSet rs= UserDAO.takeuserinformation(mail);
      String userid= "";
    
      String pass= "";  
     
      while(rs.next())
      {
    	  userid=rs.getString(1);
    	  pass=rs.getString(2);
    	  
      }
      System.out.println("userid is >>>>>>>>>>>>>>>>>>>>>>>>"+userid);
      System.out.println("pass is >>>>>>>>>>>>>>>>>>>>>>>>"+pass);
    
   
				String dwn_file_path = request.getRealPath("") + "/userimformation/"+userid+".txt";

				 System.out.println("Download File Path :"+dwn_file_path);
				 
				String dat="user_id: "+ userid   +"  Password: "+ pass;
				System.out.println("data is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+dat);

				  
						
						File f = new File(dwn_file_path);
						 FileWriter fos1 = new FileWriter(f);
					     BufferedWriter fw = new BufferedWriter(fos1);
					     fw.write(dat);
					     fw.close();
				
						
					//	response.sendRedirect(request.getContextPath()+"/Passuserdetails?fileNames="+dwn_file_path+"&download=true");
			
					     try
					 	{
					 	String filename="";
					 	String downloadedfilepath=dwn_file_path;
					 	File file = new File(downloadedfilepath);
					 	ServletContext context = getServletContext();
					 	String mimeType = context.getMimeType(downloadedfilepath);
					 	if (mimeType == null) 
					 	{
					 	// set to binary type if MIME mapping not found
					 	mimeType = "application/octet-stream";
					 	}
					 	System.out.println("MIME type: " + mimeType);
					 													
					 	// modifies response
					 	response.setContentType(mimeType);
					 	response.setContentLength((int) file.length());

					 	System.out.println("=======lenghthhhhh========="+(int) file.length());
					 	FileInputStream inStream = new FileInputStream(file);												
					 	// forces download
					 	String headerKey = "Content-Disposition";
					 	String headerValue = String.format("attachment; filename=\"%s\"", file.getName());
					 	
					 	response.setHeader(headerKey, headerValue);
					 	// obtains response's output stream
					 	OutputStream outStream = response.getOutputStream();
					 													
					 	byte[] buffer = new byte[100096];
					 	int bytesRead1 = -1;
					 													
					 	while ((bytesRead1 = inStream.read(buffer)) != -1) 
					 	{
					 	outStream.write(buffer, 0, bytesRead1);
					 	}
					 	inStream.close();
					 	outStream.close();
					 	}
					 	catch(Exception e)
					 	{
					 		e.printStackTrace();
					 	}
			
			
			
			
		}
		
		
		catch(Exception e)
		{
			
		}
	}
	
	
}
