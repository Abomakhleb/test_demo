<%@ page import="com.supportclass.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
String uid = session.getAttribute("userid").toString();
ResultSet rs = UserDAO.gettReq(uid);
	int no=Utility.parse(request.getParameter("no"));
	
	String userid="",stats="";
	int rno=0;
	if(no==0)
	while(rs.next())
	{
		rno=rs.getInt(1);
		userid=rs.getString(2);
		stats=rs.getString(3);
	}
	
	System.out.println("Name "+userid);
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
				%>
				<form action="<%=request.getContextPath()%>" method="get">
				
					
					<br></br>
					<div id="a1" style="position: absolute;top: 50px;left: 150px;">
					
					<table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>View Request Status</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="10" align="center"><hr size="5" ></hr></td>
			     			
			     	</tr>
			     	<tr><td>&nbsp;&nbsp;</td></tr>
			     	<tr>
			     		
			     		<td> Req No</td>
			     		<td>:</td>
			     		<td>
			     			<p><%=rno %></p>
			     		</td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td> UserID </td>
			     		<td>:</td>
			     		<td>
			     			<p><%=userid %></p>
			     		</td>
			     		
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		
			     		<td>Status </td>
			     		<td>:</td>
			     		<td><p><%=stats %></p></td>
			     	</tr>
			     	
			     	</table>
					
					</div></form>
				<%
				if(Utility.parse(request.getParameter("no1"))==1)
				{
					%>
						<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
							<p>Your profile updated successfully ..!</p>
						</div>
					<%
				}
			}
		%>
</body>
</html>