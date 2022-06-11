<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="com.supportclass.*" %>
<html>
<head>
<%! 
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

<link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/pagination.js"></script>

 <!-- for popup message start -->
<link href="<%=request.getContextPath() %>/res/message.css" rel="stylesheet" type="text/css" /> 

<script type="text/javascript" src="<%=request.getContextPath() %>/res/style.js"></script>	
<!-- for popup message end-->
    

</head>
<body onload="startTimer();">
<center>
<%


ResultSet rs = UserDAO.getRequest();



%>
<br></br>
<div style="position: absolute;top: 10px;left: 220px;">
<p style="color: red;"><b>View User Request</b></p>
</div>
<div class="CSSTableGenerator" style="width:580px;height:150px;top: 50px;">
<table class="pretty-table" border="1" id="user">
  
    <th scope="col">Rec No</th>
    <th scope="col"> User ID</th>
    
    <th scope="col">Key Send</th>
    <th scope="col">Reject</th>
  
<%while(rs.next())
	{%>
  <tr>
    <td><%=rs.getInt(1) %></td>
    	<td><%=rs.getString(2)%></td>
    	
    	<td><a href="<%=request.getContextPath()%>/SendPublicKey?requestno=<%=rs.getInt(1)%>&uid=<%=rs.getString(2)%>&no=1"><font style="color: blue;"><b>Send Public Key</b></font></a></td>
    	<td><a href="<%=request.getContextPath()%>/SendPublicKey?requestno=<%=rs.getInt(1)%>&no=2"><font style="color: blue;"><b>Reject</b></font></a></td>
  
  </tr>
<%
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
		<div style="position: absolute;top: 150px;">
            <div class="success" id="message" >	
	           <p> Key Sent Successfully.....!</p>
            </div>
             </div>	
		
					
		<%}
		if(no==3)
		{%>
		
			<div style="position: absolute;top: 150px;">
            <div class="success" id="message" >	
	           <p> User request Deleted Successfully.....!</p>
            </div>
             </div>	
		<%
		}
		if(no==2)
		{%>
		
			<div style="position: absolute;top: 150px;">
            <div class="error" id="message" >	
	           <p>Oop's something went wrong.....!</p>
            </div>
             </div>		
		<%
		}
		
	%>
	
	<div id="pageNavPosition" style="position:absolute;top:380px;left:400px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>