<%@ page import="com.supportclass.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String user=Utility.parse1(request.getAttribute("user"));
	System.out.println("username :"+user);
	
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int no=Utility.parse(request.getParameter("noy"));
	System.out.println("no :"+no);
	int id=0;
	String userid="",name="",add="",email="",phone="";
	if(no==0)
	while(rs.next())
	{
		
		userid=rs.getString(2);
		System.out.println("userid :"+userid);
		name=rs.getString(4);
		System.out.println("name :"+name);
		email=rs.getString(5);
		System.out.println("email :"+email);
		phone=rs.getString(6);
		System.out.println("phone :"+phone);
	}
	
	
%>
<head>
	
</head>
<body onload="startTimer()">
		<%
			if(no==1)
			{
				%>
					<div class="error" id="message">	
						<p>Opp's,Seems something went wrong ..!</p>
					</div>
				<%
			}
		if(no==0)
			{
				System.out.println("phone :"+phone);
				%>
				
				<form action="<%=request.getContextPath()%>/EditProfile_User" method="get">
				<input type="hidden" name="name" value="<%=user %>">
					<input type="hidden" name="no" value="<%=1%>">
					<div align="right">
					
					<input type="image" value="submit" src="<%=request.getContextPath()%>/images/edit.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/images/edit.png'" class="gradientbuttons" width="10%" height="10%"/>
						
					</div>
					<br></br>
					<div id="a1" style="position: absolute;top: 50px;left: 150px;">
					
					<table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 25px;color: white;"><b>User Profile</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="10" align="center"><hr size="5" ></hr></td>
			     			
			     	</tr>
			     	 <tr><td>&nbsp;&nbsp;</td></tr>
			     	<tr>
			     		
			     		<td><font color="white"> Name</font></td>
			     		<td><font color="white">:</font></td>
			     		<td>
			     			<p><font color="white"><%=name %></font></p>
			     		</td>
			     	</tr>
			     	 
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			    	<td> <font color="white">LoginID </font></td>
			     		<td><font color="white">:</font></td>
			     		<td>
			     			<p><font color="white"><%=userid %></font></p>
			     		</td>
			     		
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		
			     		<td><font color="white">Mail ID </font></td>
			     		<td><font color="white">:</font></td>
			     		<td><p><font color="white"><%=email %></font></p></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	
			     	<tr>
			     		<td><font color="white">Cell N0 </font> </td>
			     		<td><font color="white">:</font></td>
			     		<td><p><font color="white"><%=phone %> </font></p></td>
			     		
			     	</tr>
			    
			     	
			     	</table>
					
					</div></form>
				<%
			}
				if(Utility.parse(request.getParameter("no1"))==1)
				{
					%>
						<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
							
							
							<script>

    alert('Your profile updated successfully ..!:)')

  </script>
						</div>
					<%
				}
			
		%>
</body>
</html>