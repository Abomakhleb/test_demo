
package com.user.action;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.supportclass.ReadFile;



public class Aggregatekey_download extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		
		System.out.println("its came into aggregatekey");
		String loginmname="";
		PrintWriter out=response.getWriter();
		try
		{
			
		
			 String  filenm=request.getParameter("file");
		    
System.out.println("filename is "+filenm);
				

				String dwn_file_path = request.getRealPath("") + "/Aggregatekey_of_users/"+filenm;

				 System.out.println("Download File Path :"+dwn_file_path);
				 
				 String data = ReadFile.readfile(dwn_file_path);
				

				  
						
						File f = new File(dwn_file_path);
						 FileWriter fos1 = new FileWriter(f);
					     BufferedWriter fw = new BufferedWriter(fos1);
					     fw.write(data);
					     fw.close();
				
						
						response.sendRedirect(request.getContextPath()+"/Passagg?fileNames="+dwn_file_path+"&download=true");
			
			
			
			
			
			
		}
		
		
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User EditProfile Servlet......"+e);
			out.println("Opps's Error is in User EditProfile Servlet......"+e);
		}
	}
	
	
}
