package com.user.action;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Database.AdminDAO;
import com.Database.UserDAO;
import com.admin.Des;
import com.mysql.jdbc.ResultSet;
import com.supportclass.CL_SendMail;

public class Signup1 extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	String uid=null;
	String pass=null;
	String cpass=null;
	String uname=null;
	String email=null;
	String pno=null;
	String grade=null;
	
	 uid=req.getParameter("uid");
	 pass=req.getParameter("pass");
	 cpass=req.getParameter("cpass");
	 uname=req.getParameter("uname");
	 email=req.getParameter("email");
	 pno=req.getParameter("pno");
	 grade=req.getParameter("grade");
	RequestDispatcher rd;
	int k=0;
	boolean flag=false;
	if(uid!=null && pass!=null && cpass!=null && uname!=null && email!=null && pno!=null && grade!=null)
	{
		if(pass.equals(cpass))
		{
			k=UserDAO.Checkuser(uid);
			if(k>0)
			{
				rd=req.getRequestDispatcher("/signup1.jsp?no=1");
				rd.forward(req, resp);	
				
			}else
			{
				
			     String userid = "", email1 = "";
				HttpSession s = req.getSession();
				String password = "", ownerid = "";

				boolean sendMailflag = false;

				flag=UserDAO.signUp(uid, pass, uname, email, pno, grade);
				try {
					
					
					String username = "";
					String u_email = "", id = "";
					ownerid = req.getParameter("ownerid");

					

					ResultSet rs = (ResultSet) AdminDAO.getUserdetails1();
					ResultSet rs1 = (ResultSet) AdminDAO.getUserdetail();

			
					
					
				while (rs.next()) {
						username = rs.getString(1);
						u_email = rs.getString(2);
						password = rs.getString(3);
						
						System.out.println("user details:" + username + "| password:"
								+ password + "| email:" + u_email);
						String publi = UserDAO.gettPublickey(ownerid);
						
						String user_hash = UserDAO.gethash_key(rs.getString(4));

						String destFilePath = req.getRealPath("")
								+ "\\Files\\Encryption\\public_key.txt";

						System.out
								.println(" user hash key ++++++++++++++++++++++++++++ is "
										+ user_hash);

						String userlogindetail = " Your User ID :" + username
								+ " Password :" + password;

						String msg = publi + "@" + user_hash;

						Des d = new Des("333kkk45");
						String encrypted = d.encrypt(msg);

						File f = new File(destFilePath);
						FileWriter fos1 = new FileWriter(f);
						BufferedWriter fw = new BufferedWriter(fos1);
						fw.write(encrypted);
						fw.close();

						sendMailflag = CL_SendMail.sendPersonalizedMail(u_email.trim(),
								"send.user.details@gmail.com", "dhsinformatics",
								"Public Key Details", userlogindetail, destFilePath,
								"smtp.gmail.com", "465");

						System.out.println("sendMailflag :" + sendMailflag);

					}

				} catch (Exception e) {

				}
				
				
				
				
			if(sendMailflag)
				{
					rd=req.getRequestDispatcher("/signup1.jsp?no=2");
					rd.forward(req, resp);
				}else
				{
					rd=req.getRequestDispatcher("/signup1.jsp?no=3");
					rd.forward(req, resp);	
				}
				
			}
			
		}else
		{
			rd=req.getRequestDispatcher("/signup1.jsp?no=4");
			rd.forward(req, resp);	
		}
		
	}else
	{
		rd=req.getRequestDispatcher("/signup1.jsp?no=3");
		rd.forward(req, resp);	
	}
	
	
}
}

