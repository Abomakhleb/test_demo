<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="com.supportclass.*" %>
<html>
<head>
<%! 
int k=1;
public int convert(String str) 
{ 
	int conv=0; 
	if(str==null) 
	{ 
		str="0"; 
	} 
	else if((str.trim()).equals("null")) 
	{ 
		str="0"; 
	} 
	else if(str.equals("")) 
	{ 
		str="0"; 
	} 
	try
	{ 
		conv=Integer.parseInt(str); 
	} 
	catch(Exception e) 
	{ 
	} 
	return conv; 
	} 
%>



<%


String rs = request.getAttribute("sb").toString();

System.out.println("rs :"+rs);

String[] str = rs.trim().split("@");


%>

<link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<center>





<br></br>
<div style="position: absolute;top: -15px;left: 220px;">
<p style="color: white; font-size: 25px;"><b>Ranked Files from Server</b></p>
</div>
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table class="pretty-table" border="1"    BORDERCOLOR="#FFFFFF"  width="20%"  BORDER="20" CELLPADDING="10" CELLSPACING="3">
  
      <th scope="col"><font color="white">S.NO</font></th>
    <th scope="col"><font color="white"> File Name</font></th>
    <th scope="col"><font color="white"> Word %</font></th>
    <th scope="col"><font color="white">Download</font></th>
  
<%

String st[];
for(int i=0;i<str.length;i++)
{

 st = str[i].trim().split("~");
 String fname=UserDAO.getFilename(st[0]);

 %>
 
 <tr>
 <td><font color="white"><%=k%></font></td>
 	<td><font color="white"><%=fname%></font></td>
 	<td><font color="white"><%=st[1].trim()%></font></td>
 	<td><a href="<%=request.getContextPath()%>/Decryption?filename=<%=fname%>&no=0" ><font style="color: white;"><b>Download</b></font></a></td>
 	<%-- <td><a href="<%=request.getContextPath()%>/JSP/User/select_publickey.jsp?filename=<%=fname%>&no=0" ><font style="color: blue;"><b>Download</b></font></a></td> --%>
</tr>
 <%
 
 k=k+1;

}


%>

</table>
</div>
</center>
<%	
		int no=Utility.parse(request.getParameter("no"));
	System.out.println("No :"+no);
		if(no==1)
		{%>
		<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px;font-family: monotype corsiva; ">
		<p>User Details Updated Successfully..</p>	
		</div>
		
					
		<%}
		if(no==2)
		{%>
		
			<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px; ">	
		
		<p>User Deleted Successfully</p>	
		</div>		
		<%
		}
		if(no==3)
		{%>
		
			<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px; ">	
		
		<p>Somthing wrong please try again......//</p>	
		</div>		
		<%
		}
		
	%>
</body></html>