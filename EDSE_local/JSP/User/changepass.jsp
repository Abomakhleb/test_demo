<%@ page import="com.supportclass.*" %>
<html>
<head>
	<%
		String id=Utility.parse1(session.getAttribute("userid"));
		int no=Utility.parse(request.getParameter("no"));
		
	%>
	
</head>
<body onload="startTimer()">
	<form id="login" action="<%=request.getContextPath() %>/ChangePass_User">
		
		<input type="hidden" name="id" value="<%=id%>"></input>
		<input type="hidden" name="no" value="2"></input>
		
		<br></br>
	<div id="a1" style="position: absolute;top: 30px;left: 150px;">
	
	 <table id="login" align="center">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:cursive;font-size: 25px;color: white;"><b>Change Password</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td><font color="white">User Id</font></td>
			     		<td><font color="white">:</font></td>
			     		<td>
			     			<input class="field" type="text" name="user_id" value="<%=id%>" readonly="readonly">
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">Current Password</font></td>
			     		<td><font color="white">:</font></td>
			     		<td>
			     			<input class="field" type="password" name="pass" required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">New Password</font> </td>
			     		<td><font color="white">:</font></td>
			     		<td>
			     			<input class="field" type="password" name="npass"  required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">Confirm new password</font></td>
			     		<td><font color="white">:</font></td>
			     		<td><input class="field" type="password" name="cpass"  required="yes"></input></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     	<td colspan="3" align="center">
			     	<input type="submit" value="Change Pass" />
			     	
			     	</td>
			     	</tr>
	
		
	</table></div></form>
<%
if(no==1)
{
	%>
		<div class="error" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
			<!-- <p>Opp's,your current password is wrong ..!</p> -->
			
			
		<script>

    alert('Opps,your current password is wrong ..!:)')

  </script>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
			
			
			<script>

    alert('Opps,your new password do not match with confirm password ..!')

  </script>
		</div>
	<%
}
if(no==3)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			
			
			
			<script>

    alert('Opps,Seems something went wrong....!')

  </script>
		</div>
	<%
}
if(no==4)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
		
			
			
			<script>

    alert('Your Password Updated Successfully....!')

  </script>
		</div>
	<%
}
%>	
	
</body>
</html>