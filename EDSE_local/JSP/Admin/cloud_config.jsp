<%@ page import="java.sql.*" %>
<%@ page import="com.supportclass.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Database.AdminDAO"%><html>
<%
	
ResultSet list = AdminDAO.getCloud();
	
System.out.println("List :");
%>
<head>
	
</head>
<body onload="startTimer()">

<div style="position: absolute;top: 10px;left:450px;">			
	<span>
		<a href="<%=request.getContextPath()%>/JSP/Admin/editcloud.jsp" target="afrm"><img src="<%=request.getContextPath() %>/images/edit.png" height="30" width="50" /></a>
		<br><font style="font-family: cursive;size: 5px;color: #FF2400;" >Edit Cloud </font>
	</span></div>
			
				<form action="" method="get">
				
				
					<table BORDERCOLOR="#FFFFFF"   BORDER="15" CELLPADDING="10" CELLSPACING="3"  id="login" align="center" border="1" width="500px" style="position: absolute;top: 100px;left:50px;">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:cursive;font-size: 20px;color: white;"><b>Cloud Configuration Details</b></font></td>
			     	</tr>
			     	
			     
			     	<tr>
			     		<th colspan="1" align="center"><font color="white">Cloud Code</font></th>
			     		<th  colspan="1" align="center"><font color="white">Cloud URL</font></th>
			     		<th  colspan="1" align="center"><font color="white">Cloud Name </font></th>
			     		<th  colspan="1" align="center"><font color="white">Cloud Password </font></th>
			     		
			     		
			     	</tr>
			     	
			     	<%
			     	if(list!=null)
			     	while(list.next())
			     	{
			     	%>
			     	
			     	<tr>
			     		<td><font color="white">
			     			<%=list.getInt(1)%>
			     		</font></td>
			     		<td ><font color="white">
			     			<%=list.getString(2)%>
			     	</font>	</td>
			     		
			     		<td ><font color="white">
			     			<%=list.getString(3)%>
			     		</font></td>
			     		<td ><font color="white">
			     			<%=list.getString(4)%>
			     		</font></td>
			     		
			     		
			     	</tr>
			     	
			     	<%
			     	}
			     	list.close();
			     	 %>
			     	
			     	</table>
					
					</form>
					
					<%
int no=Utility.parse(request.getParameter("no"));
if(no==1)
{
	%>
		<div class="error" id="message" style="position: absolute;top: 10px;color:red;font-size: 20px;">	
			
			
			<script>

    alert('Cloud Updated Successfully!')

  </script>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color:red;font-size: 20px;">	
			
			
			
			<script>

    alert('Something wrong oing update ..!')

  </script>
		</div>
	<%
}
%>
		
</body>
</html>