package com.user.action;

import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

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

import com.Database.Global;
import com.Database.UserDAO;
import com.admin.Des;
import com.diffie.DiffehellmanDec;
import com.diffie.GDeCompressZipFile;
import com.supportclass.Cloud1_Download;
import com.supportclass.RSA_File_EncryptionDecryption;
import com.supportclass.ReadFile;
import com.supportclass.SerializeToDatabase;
import com.test.Decrypt_New;




public class Decryption extends HttpServlet
{
	protected void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
			{
		String filenmm="";
		String filenm="";
		String dest ="", dest1="";
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userid = session.getAttribute("userid").toString();
		
		//String bigno1=session.getAttribute("bno1").toString();
		//String bigno2=session.getAttribute("bno2").toString();
		
		String bobkey=session.getAttribute("bob").toString();
		//String bigno2=session.getAttribute("bno2").toString();
		//BigInteger n = null,e = null;
		//n=new BigInteger(bigno1);
		// e=new BigInteger(bigno2);
		 filenm=request.getParameter("filename");
		
		String replace = filenm.replace('.','~');
		String[] split = replace.split("~");
	String name=	split[0];
		System.out.println("Image name : " + split[0]);
		System.out.println("Image extension : " + split[1]);
		
		
		FileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		try {
			
			
				String server = Global.SERVER1;
		     
		        String user = Global.FTP_USER1;
		        String pass = Global.FTP_PASS1;
		        
		        

				String dirToCreate = "EDSE";

				String dwn_file_path = request.getRealPath("") + "/Files/Download/"+filenm;
				
				String dwn_file_path1 = request.getRealPath("") + "/Files/Download/"+"Encrypt_"+name+".gz";
				filenmm=	"Encrypt_"+name+".gz";
				// Download File From Cloud 1 //
				String dwn_form_cloud1 = Cloud1_Download.download(server.trim(), user.trim(), pass.trim(), filenmm.trim(),dirToCreate.trim(),dwn_file_path1.trim());
						
				 System.out.println("Download File Path :"+dwn_file_path1);
				 
					
				 
		boolean flagg=	 GDeCompressZipFile.gunzipIt(dwn_file_path1,dwn_file_path);
				 if(flagg)
				 {
				 
				 
				 
				 
				
				
				
				
				
				String encry_data = ReadFile.readfile(dwn_file_path);
				
				System.out.println("encry_data in Decryption>>>>>>>>>>>>>>>>>>>>>>>>>"+encry_data.trim());
				
				
				dest = request.getRealPath("")+ "/Files/Decryption/Decrypt_" + filenm;
					System.out.println("Decryption File Path :" + dest);
				
				
		boolean flagw=		DiffehellmanDec.DiffieHellmanDecyption(dwn_file_path,dest,bobkey);
				
				
				
				
				
			
					
					
				Calendar currentDate = Calendar.getInstance();
				SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy");
				SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
				String date = formatter.format(currentDate.getTime());
				String time = formatter1.format(currentDate.getTime());
				
				boolean flag = UserDAO.insertTrans(date,time,userid,filenm);
				
				/*System.out.println("Decryption Status :"+f);*/
				
				response.sendRedirect(request.getContextPath()+"/Pass?fileNames="+dest+"&download=true");
				

			//}
		}
		}
		catch (Exception e1) {
			e1.printStackTrace();
		}
		
		
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}