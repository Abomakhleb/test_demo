<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@page import="java.sql.ResultSet"%>

<%@page import="com.supportclass.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Content</title>



</head>
<body background="<%=request.getContextPath()%>/Images/back4.jpg">

<DIV id=popCal onclick=event.cancelBubble=true style="BORDER-BOTTOM: 2px ridge; BORDER-LEFT: 2px 
ridge; BORDER-RIGHT: 2px ridge; BORDER-TOP: 2px ridge; POSITION: absolute; VISIBILITY: hidden; 
WIDTH: 10px; Z-INDEX: 100">
<IFRAME frameBorder=0 height=188 name=popFrame scrolling=no src="Images/popcjs.htm" width=183>
</IFRAME>
</DIV>
<script event=onclick() 
                for=document>popCal.style.visibility = "hidden";
 </script>
 
<%
	


	
%>


<form name="m_user" method="post" action="<%=request.getContextPath()%>/SearchContent"  >

<center>
	<div align="left" style="position: absolute;top: 40px;left:0px;">
	  <table border="0" width="100%">
		<tr>
		  <td width="50%">
			<p align="center"><b><font color=#ffffff size="5" >Search File with Keyword</font></b>
			
			</td>
		</tr>
	  </table>
	</div>
	<div align="center">
	  <center>
	  <br>
	  
	  <table align="center"   style="position: absolute;top: 80px;left:50px;" >
	  
	  <tr><td>&nbsp;</td></tr>
	 
			     	<tr>
			     		
			     		<td colspan="1" ><font color="white" size="5"><b>Search Keyword :</b></font>
			     		
			     		
			     		<input type="text" name="content" placeholder="Search..." required="yes" style="width: 200px;" >
			     		<input type="submit" src="<%=request.getContextPath()%>/images/searchcon.png" style="position: absolute;top: 30px;left:400px;">
					
			</td>
			     		
			     </tr>	
			    
	  
	  </table>
	 
	  </center>
	</div>
	</center>
<center>
<br>

</form>

<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
    	
    		
    			<script>

    alert('Keyword not Found.....!')

  </script>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==2)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: #33A1C9;font-family: monotype corsiva;">	
		
			
			<script>

    alert('Please Enter Upto 5 words only.....!')

  </script>
		</div>			
	<%
	}
	
	%>



</body>
</html>