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

<script type="text/javascript" src="<%=request.getContextPath() %>/jsk/pagination.js"></script>
</head>
<body>
<center>
<%


ResultSet rs = AdminDAO.getKeyword_Weight();




%>
<br></br>



<div class="CSSTableGenerator" style="width:580px;height:150px; top:50px">
<table   BORDERCOLOR="#FFFFFF"  width="20%"  BORDER="20" CELLPADDING="10" CELLSPACING="3"  class="pretty-table" border="1" id="user">
    <h2 style="color:#069"><font color="white">KeyWord Ranking Details</font></h2>
    <th scope="col"><font color="white">Key No</font></th>
    <th scope="col"> <font color="white">File_No</font></th>
    <th scope="col"> <font color="white">Keyword</font></th>
    <th scope="col"><font color="white"> Weightage</font></th>
     <th scope="col"> <font color="white">Keyword Rank</font></th>
    
  
<%while(rs.next())
	{%>
  <tr>
    <td><font color="white"><%=rs.getInt(1) %></font></td>
    	<td><font color="white"><%=rs.getString(2)%></font></td>
    	<td><font color="white"><%=rs.getString(3)%></font></td>
    	<td><font color="white"><%=rs.getString(4)%></font></td>
    	<td><font color="white"><%=rs.getString(5)%></font></td>
    	
  </tr>
<%
}
%>

</table>
</div>
</center>

	
	<div id="pageNavPosition" style="position:absolute;top:480px;  color:white;  left:100px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>