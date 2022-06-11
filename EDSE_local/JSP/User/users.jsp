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

<%-- <link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/> --%>

<script type="text/javascript" src="<%=request.getContextPath() %>/jsk/pagination.js"></script>
</head>
<body>
<center>
<%


ResultSet rs = UserDAO.getUsers();



%>
<br></br>
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table BORDERCOLOR="#FFFFFF"  width="20%"  BORDER="20" CELLPADDING="10" CELLSPACING="3"  class="pretty-table" border="1" id="user" >
   <h2 style="color:#069"><font color="white">END USER DETAILS</font></h2>
    <th scope="col"><font color="white">U_no</font></th>
    <th scope="col"><font color="white"> ID</font></th>
    <th scope="col"><font color="white"> Name</font></th>
    <th scope="col"><font color="white"> Email</font></th>
    <th scope="col"><font color="white"> Phone</font></th>
   
    <th scope="col"><font color="white">Delete</font></th>
  
<%while(rs.next())
	{%>
  <tr>
    <td><font color="white"><%=rs.getInt(1) %></font></td>
    	<td><font color="white"><%=rs.getString(2)%></font></td>
    	<td><font color="white"><%=rs.getString(4)%></font></td>
    	<td><font color="white"><%=rs.getString(5)%></font></td>
    	<td><font color="white"><%=rs.getString(6) %></font></td>
    	<td><a href="<%=request.getContextPath()%>/EditProfile?requestno=<%=rs.getInt(1)%>&no=3"><font style="color: white;"><b>Delete</b></font></a></td>
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
		<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px;font-family: monotype corsiva; ">
		
		<script>

    alert('User Details Updated Successfully..')

  </script>
		</div>
		
					
		<%}
		if(no==2)
		{%>
		
			<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px; ">	
		
		
		<script>

    alert('User Details  Deleted Successfully:)')

  </script>
		</div>		
		<%
		}
		
		
	%>
	
	<div id="pageNavPosition" style="position:absolute;top:380px; color:white;   left:400px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
   
</body></html>