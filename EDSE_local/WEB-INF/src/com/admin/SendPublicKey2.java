package com.admin;

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
import com.mysql.jdbc.ResultSet;
import com.supportclass.CL_SendMail;

public class SendPublicKey2 extends HttpServlet

{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userid = "", email = "";
		HttpSession s = req.getSession();
		String password = "", ownerid = "";

		boolean sendMailflag = false;

		try {
			String username = "";
			String u_email = "", id = "";
			ownerid = req.getParameter("no");

			String publi = UserDAO.gettPublickey(ownerid);

			ResultSet rs = (ResultSet) AdminDAO.getUserdetails1();
		

			while (rs.next()) {
				username = rs.getString(1);
				u_email = rs.getString(2);
				password = rs.getString(3);
				System.out.println("user details:" + username + "| password:"
						+ password + "| email:" + u_email);

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
		RequestDispatcher rd = null;
		if (sendMailflag) {

			rd = req.getRequestDispatcher("/JSP/Admin/content.jsp?no=5");
			rd.forward(req, resp);
		} else {
			rd = req.getRequestDispatcher("/JSP/Admin/content.jsp?no=6");
			rd.forward(req, resp);
		}
	}

}

