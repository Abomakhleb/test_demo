package com.admin;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Database.AdminDAO;
import com.Database.UserDAO;
import com.diffie.Diffeencdec;
import com.mysql.jdbc.ResultSet;
import com.sun.corba.se.spi.servicecontext.SendingContextServiceContext;
import com.supportclass.CL_SendMail;

public class SendPublicKey1 extends HttpServlet

{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		boolean flag=true;
		boolean sendMailflag = false;
		 HttpSession session = req.getSession(false);  
		
	if ( session.getAttribute( "waitPage" ) == null )
	    	   
      	 {  
   	   session.setAttribute( "waitPage", Boolean.TRUE );  
   	   PrintWriter out1 = resp.getWriter();  
   	   out1.println( "<html><head>" );  
   	   out1.println( "<title>Please Wait...</title>" );  
      	   out1.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
   	   out1.println( "</head><body bgcolor=''>" );  
   	   out1.println( "<br><br><br>" );
   	   out1.print( "<center><img src='images/Processing2.gif' width='200' height='200'></img><br><br>");
   	   out1.println("<font color='#fedcba' size='5'>");
   	   out1.println( "Please Do not press Back or Refresh button.......<br>  " );
   	   out1.println("<font color='#fedcba' size='5'>");
   	   out1.println( "mail sending is  is going on......  " );
   	   out1.println("<font color='#fedcba' size='5'>");
   	   out1.println( "Please wait....</h1></center");  
   	   out1.close();  
      } 
		
	else
	{
	 
		 session.removeAttribute( "waitPage" );
		
		
		String userid = "", email = "";
		HttpSession s = req.getSession();
		String password = "", ownerid = "";



		try {
			String username = "";
			String u_email = "", id = "";
			ownerid = req.getParameter("ownerid");

			//String publi = UserDAO.gettPublickey(ownerid);
			
			
			

			ResultSet rs = (ResultSet) AdminDAO.getUserdetails1();

			while (rs.next()) {
				username = rs.getString(1);
				u_email = rs.getString(2);
				password = rs.getString(3);
				 String status="";
				 
				status= rs.getString(5);
				if(status.equals("yes"))
				{
					
				}
				else
				{
				
				System.out.println("       ++++++++++++STATUS+++++++++++++++"+status);
				System.out.println("user details:" + username + "| password:"
						+ password + "| email:" + u_email);

				String user_hash = UserDAO.gethash_key(rs.getString(4));

				String destFilePath = req.getRealPath("")
						+ "\\Aggregatekey_of_users\\"+username+"_"+"Aggregatekey.txt";

				System.out
						.println(" user hash key ++++++++++++++++++++++++++++ is "
								+ user_hash);

				String userlogindetail = " Your User ID :" + username
						+ " Password :" + password;

				
				String msg ="";
				String aliceseckey="";
				FileReader fileReader = 
		                new FileReader(req.getRealPath("")+"\\secretkey\\alice.txt");

		            // Always wrap FileReader in BufferedReader.
		            BufferedReader bufferedReader = 
		                new BufferedReader(fileReader);

		            while((aliceseckey = bufferedReader.readLine()) != null) {
		                System.out.println(aliceseckey);
		             
		                System.out.println("alice sec key in sendpublickey is >>>>>>>>>>>>>>>>>>>"+aliceseckey);
		            // Always close files.
		           
		            msg = aliceseckey + "@" + user_hash;
				
				
				
		
				
		            } 
		            
		            
		            bufferedReader.close();  
				
				
				
			
				
			System.out.println("final message in sendpublickey>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+msg);

				Des d = new Des("333kkk45");
				String encrypted = d.encrypt(msg);
				
				System.out.println("encrypted message is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+encrypted);

				File f = new File(destFilePath);
				FileWriter fos1 = new FileWriter(f);
				BufferedWriter fw = new BufferedWriter(fos1);
				fw.write(encrypted);
				fw.close();
				sendMailflag =true;
				/*sendMailflag = CL_SendMail.sendPersonalizedMail(u_email.trim(),
						"send.user.details@gmail.com", "blrstore@123",
						"Public Key Details", userlogindetail, destFilePath,
						"smtp.gmail.com", "465");*/
				if(sendMailflag)
				{
					UserDAO.updateStatus1(username,u_email,username+"_"+"Aggregatekey.txt");
				}

				System.out.println("sendMailflag :" + sendMailflag);

			}
			}
		
		} catch (Exception e) {

		}
	}
		RequestDispatcher rd = null;
		if (sendMailflag)
		{

			rd = req.getRequestDispatcher("/JSP/Admin/content.jsp?no=5");
			rd.forward(req, resp);
		} else {
			rd = req.getRequestDispatcher("/JSP/Admin/content.jsp?no=6");
			rd.forward(req, resp);
		}
	}

}

