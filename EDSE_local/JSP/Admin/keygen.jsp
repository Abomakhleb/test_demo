<%@ page import="java.sql.*" %>
<%@ page import="com.supportclass.*" %>
<%@ page import="com.test.*" %>
<%@ page import="javax.xml.*" %>
<%@ page import="javax.xml.xpath.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="java.math.BigInteger" %>

<%@page import="com.supportclass.RSA_File_EncryptionDecryption"%>
<%@page import="com.Database.UserDAO"%><html>
<head>

<link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/>
</head>
<%

RequestDispatcher rd=null;
String s = request.getParameter("ownerid");

//String public_key = request.getRealPath("")+"\\Keys\\public_key.txt";
//String private_key = request.getRealPath("")+"\\Keys\\private_key.txt";
//boolean f = RSA_File_EncryptionDecryption.generateRSAKey1(public_key,private_key,s);

BigInteger n = null;
BigInteger d = null;
BigInteger e = null;


RSA_New rsa = new RSA_New();

n=rsa.getN();
e=rsa.getE();
d=rsa.getD();

System.out.println("N Value :"+n+"E Value :"+e+"D Value :"+d);

String publickey=n+"~"+e;

String privatekey=n+"~"+d;

boolean f = UserDAO.updatekey(s,publickey,privatekey);
if(f)
{
	boolean fff = UserDAO.updateStatus();	
}



if(f)
{
	 rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=1");
	rd.forward(request, response);
}
else
{
	 rd=request.getRequestDispatcher("/JSP/Admin/content.jsp?no=2");
	rd.forward(request, response);
}


%>
 <%
    int no=Utility.parse(request.getParameter("no"));
if(no==1)
{
	%>
		<div class="error" id="message" style="position: absolute;top: 10px;color:red;font-size: 20px;">	
			
			
			<script>

    alert('Key Generated Successfully!')

  </script>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color:red;font-size: 20px;">	
			
			<script>

    alert('Something wrong in key updation !')

  </script>
		</div>
	<%
}
%>
<body>


</body></html>