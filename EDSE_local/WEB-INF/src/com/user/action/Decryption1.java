package com.user.action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Database.UserDAO;
import com.admin.Des;
import com.supportclass.ReadFile;




public class Decryption1 extends HttpServlet
{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
			{
		String hashkey ="", dest1="";
		String haskkey="";
		String userhasxhkey="";
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userid = session.getAttribute("userid").toString();
		
		System.out.println("userid in decryption1 >>>>>>>>"+userid);
		
	try {
		userhasxhkey=	UserDAO.getgradekeyofuser(userid);
		
		System.out.println("login user userhashkey is >>>>>>>>>>>>>>>>>>>"+userhasxhkey);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
		
		FileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		try {
			boolean flag=false;
			
			List fileItems = servletFileUpload.parseRequest(request);

			FileItem file = (FileItem) fileItems.get(0);
			
			FileItem file1 = (FileItem) fileItems.get(1);
			
			String filenm = file1.getString();
			
			System.out.println("File Intem cvcbcv:" + file.getName()+"File Name "+file1.getString());

			String fileName = request.getRealPath("") + "/Files/Decryption/"+ file.getName();
			
			System.out.println("File Name :"+fileName.trim());
			

			OutputStream outputStream2 = new FileOutputStream(fileName);
			InputStream inputStream2 = file.getInputStream();

			int readBytes2 = 0;
			byte[] buffer2 = new byte[10000];
			while ((readBytes2 = inputStream2.read(buffer2, 0, 10000)) != -1)
			{
				outputStream2.write(buffer2, 0, readBytes2);
				
			}
			outputStream2.close();
			inputStream2.close();
			
			    
			if (file.getName() != null)
			{
				
				

				
				 
					
				//Read Public Key //
				String pubkey = ReadFile.readfile(fileName);
				System.out.println("===================PUBLIC KEY IN DEC :"+pubkey);
				//// Des d=new Des(dirToCreate);
					//String decrypted=d.decrypt(encrypted);
				//String decrypted=Des.decrypt(pubkey);
				
				
				
				Des d = new Des("333kkk45");
					//String encrypted= d.encrypt(message);
					String decrypted=d.decrypt(pubkey);
				
				System.out.println("===========PUBLIC KEY IN DECRYPTION  :"+decrypted);
				
				//String[] pu = pubkey.split("~");
				//BigInteger n = null,e = null;
				String[] pu = decrypted.split("@");
				String bobskey=pu[0];
				
				 haskkey=pu[1];
				/*for(int j=0;j<=1;j++)
				{
				   if(j==0)
				   {
					   String temp=pu1[j];
						String[] pu2=temp.split("~");
						n=new BigInteger(pu2[0]);
						 e=new BigInteger(pu2[1]);
				   }
					hashkey=pu1[j];
					
					
				}*/
								
				
				
				/*BigInteger[] ciphertext=new BigInteger[pu.length];
				
				for(int i=0;i<pu.length;i++)
				{
					
					
					 n=new BigInteger(pu[0]);
					 e=new BigInteger(pu[1]);
					
					
				}*/
				System.out.println("bob "+bobskey+" and "+haskkey+" hash key :"+hashkey);
				
				//session.setAttribute("bno1", n);
				session.setAttribute("bob", bobskey);
				session.setAttribute("hashkey", haskkey);
				flag=true;
			}
			
			if(userhasxhkey.equals(haskkey))
			{
			if(flag)
			{
				 rd = request.getRequestDispatcher("/JSP/User/search_content.jsp?no=3");
					rd.forward(request,response); 
				
			}else
			{
				rd = request.getRequestDispatcher("/JSP/User/select_publickey.jsp?no=3");
				rd.forward(request,response); 
			}
			}else
			{
				
				
				rd = request.getRequestDispatcher("/JSP/User/select_publickey.jsp?no=4");
				rd.forward(request,response); 	
				
			}
		
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}