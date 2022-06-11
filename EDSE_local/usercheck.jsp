<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : SimpleDisplay 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120611

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Simpledisplay by FCT</title>

        <link rel="stylesheet" href="css/style.css">
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<!-- <h1><a href="#">SimpleDisplay</a></h1> -->
			<img src="title.png"  style="width:1000px;height:100px;">
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="index.jsp">ABOUT CLOUD</a></li>
			<li><a href="admin.jsp">ADMIN LOGIN</a></li>
			<li><a href="user.jsp">USER LOGIN</a></li>
			<!-- <li><a href="#">About</a></li>
			<li><a href="#">Links</a></li>
			<li class="last"><a href="#">Contact</a></li> -->
		</ul>
	</div>
	<div id="two-columns">
	 <form  action="<%=request.getContextPath()%>/Userdeatils" method="get"> 
		 <div id="col1" style=" position:absolute;   top:400px; left: 300px">
			<div class="main-wrap">
        <div class="login-main">
        <p>Enter Your Mail id</p>   
            <input type="text" placeholder="Email" name=mail class="box1 border1">
           
            <input type="submit" name="password" class="send" value="click">
         
        </div>
        </div>
		</div>
		</form>
		
		<div id="col2"><img src="images/pics01.jpg" alt="" width="260" height="240" class="image-style" />
			<div class="text-style">HEY WITH MORE SECURITY:)</div>
		</div>
	</div>
	<!-- end #menu -->
	<div id="three-columns">
		<div id="column1">
			<h2>Encryption</h2>
			<p>Encryption can be achieved using Cryptograpy technique</p>
			<p><a href="#" class="link-style">Read More</a></p>
		</div>
		<div id="column2">
			<h2>Keyword Search</h2>
			<p>Keyword search can be acheived using TF*IDF model</p>
			<p><a href="#" class="link-style">Read More</a></p>
		</div>
		<div id="column3">
			<h2>Dynamic Update</h2>
			<p>Dynamic Deletion and Insertion using cloud computing</p>
			<p><a href="#" class="link-style">Read More</a></p>
		</div>
	</div>
	<div id="welcome">
		<h2 class="title"><a href="#">Welcome to Cloud Computing</a></h2>
		<div class="entry">
			<p>This is <strong>Cloud Computing </strong>has been considered as a new
model of enterprise IT infrastructure, which can
organize huge resource of computing, storage and applications, and enable users to enjoy ubiquitous, convenient
and on-demand network access to a shared pool of
configurable computing resources with great efficiency
and minimal economic overhead.</p>
		</div>
	</div>
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">
						<!-- <h2 class="title"><a href="#">INTRODUCTION</a></h2> -->
						<p style="color:blue;"><b>INTRODUCTION</b></p>
						<div class="entry">
							<p>CLOUD computing has been considered as a new
model of enterprise IT infrastructure, which can
organize huge resource of computing, storage and applications, and enable users to enjoy ubiquitous, convenient
and on-demand network access to a shared pool of
configurable computing resources with great efficiency
and minimal economic overhead. Attracted by these
appealing features, both individuals and enterprises are
motivated to outsource their data to the cloud, instead of
purchasing software and hardware to manage the data
themselves</p>
						</div>
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<h2>KEYWORDS</h2>
							<ul>
								<li><a href="#">Searchable encryption</a></li>
								<li><a href="#">Multi-keyword ranked search</a></li>
								<li><a href="#">Dynamic update</a></li>
								<li><a href="#">Cloud computing</a></li>
								<li><a href="#">TF*IDF model</a></li>
								<li><a href="#">Indexing</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page --> 
</div>
<div id="footer">
	<p>Cloud Computing  <a href="http://www.freecsstemplates.org"></a>.</p>
</div>
<%

String k=null;
k=request.getParameter("no");
 int no=0;
 if(k!=null)
 {
	 no=Integer.parseInt(k); 
	 
	 System.out.print("no is >>>>>>>>>"+no);
 }



%>
 
 <%
if(no==1)
{
%>
<div style="position: absolute;top: 150px;">
<div class="success" id="message" >	
	<script>

    alert('Error in login Please enter userid and password currectly')

  </script>
</div>
</div>
<%} if(no==6)
{
%>
<div style="position: absolute;top: 150px;">
<div class="success" id="message" >	
	<script>

    alert('Logout successfully')

  </script>

</div>
</div>

<%}  %>
 




</body>
</html>
