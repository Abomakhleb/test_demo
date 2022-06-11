package com.admin;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.commons.io.FilenameUtils;

import com.Database.AdminDAO;
import com.Database.Global;
import com.Database.UserDAO;

import com.diffie.Diffeencdec;
import com.diffie.GZipFile;
import com.supportclass.*;

import com.test.*;
import com.util.Hashing;





public class FileUpload extends HttpServlet
{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
			{
		boolean flag2=false;
		
		 boolean  flg=false;
		HttpSession s3=request.getSession();
		String grades1=s3.getAttribute("grade").toString();
		
		String grades2 []=grades1.split("~");
	
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		ArrayList list=new ArrayList();
		
		
	
	
		
			
		
		System.out.println("=======================");
		HttpSession hs = request.getSession();

		

		FileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		try {

			List fileItems = servletFileUpload.parseRequest(request);
			FileItem file = (FileItem) fileItems.get(0);
			String filnam=file.getName();
			
			String replace = filnam.replace('.','~');
			String[] split = replace.split("~");
		String name=	split[0];
			System.out.println("Image name : " + split[0]);
			System.out.println("Image extension : " + split[1]);
			
		
		
			// Read First Files //
			
			String fileName = request.getRealPath("") + "/Files/Upload/"+ file.getName();
			
			OutputStream outputStream = new FileOutputStream(fileName);
			InputStream inputStream = file.getInputStream();

			int readBytes = 0;
			byte[] buffer = new byte[10000];
			while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1)
			{
				outputStream.write(buffer, 0, readBytes);
			}
			outputStream.close();
			inputStream.close();
			
			
			if (file.getName() != null)
			{

				String id = hs.getAttribute("userid").toString();
				
				
				File fl = new File(fileName);
				
				String destFilePath = request.getRealPath("")+"\\Files\\Encryption\\Encrypt_"+fl.getName();
				
				String destFilePath1 = request.getRealPath("")+"\\Files\\Encryption\\Encrypt_"+fl.getName();
				
				String gzipfile = request.getRealPath("")+"\\Files\\Compressed\\Encrypt_"+name+".gz";
				String gzipfile1 = request.getRealPath("")+"\\Files\\Compressed\\Encrypt_"+name+".gz";
				String s = ReadFile.readfile(fileName);
				
				//String aliceseckey =UserDAO.gettPrivatekey(id);
				String aliceseckey="";
				FileReader fileReader = 
		                new FileReader(request.getRealPath("")+"\\secretkey\\alice.txt");

		            // Always wrap FileReader in BufferedReader.
		            BufferedReader bufferedReader = 
		                new BufferedReader(fileReader);

		            while((aliceseckey = bufferedReader.readLine()) != null) {
		                System.out.println(aliceseckey);
		             

		            // Always close files.
		           
				
				
				System.out.println("alice sec key is >>>>>>>>>>>>>>>>>>>"+aliceseckey);
				
		       flg=	Diffeencdec.DiffieHellman(fileName,aliceseckey,destFilePath);
				
		            } 
		            
		            
		            bufferedReader.close();  
				//------------------------Compression technique starts-------------------------------------
				
		    
		    if(flg){
		   flag2=GZipFile.gzipIt(destFilePath1,gzipfile);
		    	
				
		    flag2=true;
			    	
		    }

				//----------------Compression technique ends---------------------------
				
			
				if(flag2)
				{
					//File Upload Process //
					String server = Global.SERVER1;
			       String filename ="Encrypt_"+name+".gz";
			        String user = Global.FTP_USER1;
			        String pass = Global.FTP_PASS1;
			        
			        
			        String dirToCreate = "EDSE/"+filename;
			        
			        File f = new File(gzipfile1);
			        
			        
			       System.out.println("=========================");
					FileUpload1.upload(server,user,pass,filename,f,dirToCreate);
					
				// Read  file //
					String data1 = ReadFile.readfile(fileName);
					
					System.out.println("@@@@ Readed data :====>"+data1);
					String data3=data1.toLowerCase();
					System.out.println("**Lower case Covert File :***\n"+data3);
					
					FileWriter fooWriter = new FileWriter(fileName, false); // true to append  & false to overwrite.					                                                
					fooWriter.write(data3);
					fooWriter.close();					
					
				
					String data2=Program.filterwords(data3);//(fileName);
					
					
					
					System.out.println("**Remove Covert File :***\n"+data2);
					FileWriter foWriter = new FileWriter(fileName, false); // true to append
                    // false to overwrite.
                     foWriter.write(data2);
                     foWriter.close();
					
					String dat = TextSearch.text_Search(fileName);
					
					 System.out.println("List Of words :"+dat);
					   
					   // Filter Process
					   ArrayList key_data = TextSearch.text_filter(dat);
					   
					   System.out.println("filtered_data :"+key_data);
					   StringBuffer sb = new StringBuffer();
					   for(int i=0;i<key_data.size();i++)
					   {
						  
						   sb.append(key_data.get(i)+"-");
						  
					   }
					   
					   TextSearch.text_count1(key_data,file.getName());
					   
					   
					   TextSearch.text_count(key_data,file.getName());
					   
					   
					   int tot = AdminDAO.gettotal(file.getName());
					   
					   boolean status = AdminDAO.updatetotal(file.getName(),tot);
					   
					   //Find Ranking 
					  TextSearch.Calculate_Rank(file.getName());
					  int fno1=AdminDAO.getFileno(file.getName());
					  String fno=String.valueOf(fno1);
					  
					  for(int i=0;i<key_data.size();i++)
					   {
						  String msg=(String) key_data.get(i);
						  
						  int count = Collections.frequency(list, msg);
						  if(count==0)
						  {
							  
							  for(int j=0;j<grades2.length;j++)
							  {
								  String k1=grades2[j];
								  int k3=0;
								  //int k=Integer.parseInt(k1);
								  String hash=Hashing.HashingFunction(msg, k1) ;
								 ResultSet rs=AdminDAO.keyNo(msg, fno);
								  String rank=null;;
								  while(rs.next())
									{
										k3=rs.getInt(1);
										rank=rs.getString(2);
									}
								  String k4=String.valueOf(k3);
								  boolean flag=AdminDAO.insertHashcode(hash, fno,k4,rank);
							  }
							  list.add(msg);
							  
						  }else
						  {
							  list.add(msg);
						  }
						  
						  
						  
						  
					   }
					   
					   
					   
					System.out.println("File insertion status : "+status);
					
					if(status)
					{
					 rd = request.getRequestDispatcher("/JSP/Admin/fileupload.jsp?no=1");
						
					 rd.forward(request, response);
						
					}
					else
					{
						rd = request.getRequestDispatcher("/JSP/Admin/fileupload.jsp?no=2");
						
						 rd.forward(request, response);
					}
				}
				else
				{
					System.out.println("Error,In Encryption Process");
				}
				
				
				
			}
		}

		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}

	
}