
<%@page import="com.supportclass.Utility"%><html>
<head>
	
	
	<%
HttpSession hs = request.getSession();

String id = session.getAttribute("userid").toString();




%>
</head>


<body onload="startTimer()">



<form id="login" action="<%=request.getContextPath() %>/Request" enctype="multipart/form-data" method="post">
		
		
			<div class="tab" style="position:absolute;top:50px;left:100px;width:400px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Key Request Process</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="3" ></hr></td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td>Your UserID is :</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="uid" value="<%=id %>" style="width:250px" readonly="readonly"></input>
			     			
			     		</td>
			     	</tr>
			     	
			     	
			     </table>
			     
				<input class="gradientbuttons" type="submit" value="Send Request" style="position:absolute;top:200px;left:150px;"/>
			</div>
			
</form>

<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
    		<p>Key Request has been sent Successfully...!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==2)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: #33A1C9;font-family: monotype corsiva;">	
			<p>Opp's something went wrong.....!</p>
		</div>			
	<%
	}
	
	%>

</body>
</html>