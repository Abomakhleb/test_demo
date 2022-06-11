<!doctype html>
<%@ page import="com.supportclass.*" %>
<html lang="en">
<head>

<title>Cloud_Query</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">


	
</head>
<body>


<font style="position: absolute;top: 180px;left: 180px;font-family: monotype corsiva;font-size: 30px;"></font>

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
<%int no=convert(request.getParameter("no"));
if(no==1)
{%>
<div style="color: red;">
	<b></b>
	<script>

    alert('Key Generated Successfully....!')

  </script>
</div>
<%}if(no==2)
{%>
<div style="color: red;">
	<script>

    alert('opps something went wrong!')

  </script>
</div>
<%}if(no==3)
{%>
<div style="color: red;">
	<script>

    alert('Access key generated successfully')

  </script>
</div>
<%} if(no==4)
{%>
<div style="color: red;">
	<script>

    alert('opps something went wrong in generating access key')

  </script>
</div>
<%}if(no==5)
{%>
<div style="color: red;">
<script>

    alert('Aggregate key is generated for all the users successfully')

  </script>
	
</div>
<%}if(no==6)
{%>
<div style="color: red;">
	<script>

    alert('opps something went wrong in generating  aggregate key')

  </script>
</div>
<%}
if(no==7)
{%>
<div style="color: red;">
<script>

    alert('Diffie Hellman Algorithm Keys Generated Successfully')

  </script>
	
</div>
<%}if(no==8)
{%>
<div style="color: red;">
	<script>

    alert('opps something went wrong ')

  </script>
</div>
<%}

%>
</body>
</html>

