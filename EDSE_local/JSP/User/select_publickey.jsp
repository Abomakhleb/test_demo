
<%@page import="com.supportclass.Utility"%><html>
<head>
	
</head>

<%

	int no=Utility.parse(request.getParameter("no"));
	String f_name = request.getParameter("filename");
    
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
%>

<form id="login" action="<%=request.getContextPath() %>/Decryption1" enctype="multipart/form-data" method="post">
		
		
			<div class="tab" style="position:absolute;top:50px;left:100px;width:400px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 25px;color: white;"><b>Decryption Process</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="3" ></hr></td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td><font color="white">Select Aggregate Key For Decryption</font></td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file" style="width:250px"></input>
			     			<font color="white"><input class="field" type="hidden" name="file" value="<%=f_name%>" style="width:250px"></font></input>
			     		</td>
			     	</tr>
			     	
			     	
			     </table>
			     
				<input class="gradientbuttons" type="submit" value="Decypt Process" style="position:absolute;top:200px;left:150px;"/>
			</div>
			
</form>

<%
	}
	
%>


<%
	if(Utility.parse(request.getParameter("no"))==4)
    {%>
    	<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
    	
    		
    			<script>

    alert('You have given Fake Aggegate KEY ana it doesnot belongs to you')

  </script>
    	</div>			
    <%}%>
</body>
</html>