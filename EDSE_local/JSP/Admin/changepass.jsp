<%@ page import="com.supportclass.*" %>
<html>
<head>
	<%
		String admin=Utility.parse1(request.getAttribute("admin"));
		int no=Utility.parse(request.getParameter("no"));
		int id=Utility.parse(request.getParameter("id"));
	%>
	
</head>
<body onload="startTimer()">
	<form id="login" action="<%=request.getContextPath() %>/ChangePass">
		<input type="hidden" name="admin" value="<%=admin %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		
		<br></br>
	<div id="a1" style="position: absolute;top: 30px;left: 150px;">
	
	 <table id="login" align="center">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:cursive;font-size: 20px;color: white;"><b>Change Password</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td><font color="white">Admin Id</font></td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="user_id" value="<%=admin %>" readonly="readonly">
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">Current Password</font></td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="password" name="pass" required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">New Password </font></td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="password" name="npass"  required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td><font color="white">Confirm new password</font></td>
			     		<td>:</td>
			     		<td><input class="field" type="password" name="cpass"  required="yes"></input></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     	<td colspan="3" align="center">
			     	<input type="submit" value="Change Pass" style="background-color:green;" />
			     	
			     	</td>
			     	</tr>
	
		
	</table></div></form>
<%
if(no==1)
{
	%>
		<div class="error" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
			
				<script>

    alert('Opps,your current password is wrong ..!')

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