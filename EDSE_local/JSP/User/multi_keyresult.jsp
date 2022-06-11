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
</head>
<body>
<center>
<%


String rs = request.getAttribute("sb").toString();

String[] str = rs.trim().split("~");

int count=1;




%>
<br></br>
<div style="position: absolute;top: 10px;left: 220px;">
<p style="color: red;"><b>Ranked Files from Server</b></p>
</div>
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table class="pretty-table" border="1" id="user">
  
    <th scope="col">Trans No</th>
    <th scope="col"> File Name</th>
    <th scope="col">Download</th>
  
<%for(int i=0;i<str.length;i++)
	{%>
  <tr>
    <td><%=count++ %></td>
    	<td><%=str[i].trim()%></td>
    	<td><a href="<%=request.getContextPath()%>/JSP/User/select_publickey.jsp?filename=<%=str[i].trim()%>&no=0"><font style="color: blue;"><b>Download</b></font></a></td>
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
		<p>Files Not Available......!</p>	
		</div>
		
					
		<%}
			
		
	%>
	
	<div id="pageNavPosition" style="position:absolute;top:450px;left:100px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>