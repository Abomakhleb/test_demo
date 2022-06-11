<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
    "http://www.w3.org/TR/html4/strict.dtd"
    >
    <%@ page import="com.supportclass.*" %>
<html lang="en">
<head>
    <title>Register Form</title>
</head>
<style type="text/css">
    #wrapper 
    {
        width:350px;
        margin:0 auto;
        font-family:Verdana, sans-serif;
        top: 150px;
        position: absolute;
        left: 250px;
    }
    legend {
        color:#336600;
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff)); /
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:#336600;
    }
    input,
    textarea {
        color: #CC6633;
        background: #fff;
        border: 1px solid #CCCCCC;
        color: #aaa;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        background:#fff;
        text-indent: 0;
        z-index: 1;
        color: #000;
        -webkit-transition-duration: 400ms;
        -webkit-transition-property: width, background;
        -webkit-transition-timing-function: ease;
        -moz-transition-duration: 400ms;
        -moz-transition-property: width, background;
        -moz-transition-timing-function: ease;
        -o-transition-duration: 400ms;
        -o-transition-property: width, background;
        -o-transition-timing-function: ease;
        width: 280px;
        
        border-color:#CC6633;
        box-shadow:#CC6633;
        opacity:0.6;
    }
    input[type="submit"]{
        background: #336600;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 10px 80px;
        padding: 5px 22px ;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        
        
    }
   
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
</style>
<body background="<%=request.getContextPath()%>/images/bg1.jpg">

<<div class="">
  <IMG SRC="<%=request.getContextPath()%>/images/Top.jpg" width=100% height="13%" style="position: absolute;top: -0.5px;left: 5px;" BORDER="0" ALT="">
</div>

    <div id="wrapper">
        <form action="<%=request.getContextPath()%>/NewUser" method="post">
            <fieldset>
                <legend>User Register </legend>
                <div>
                    <input type="text" name="loginid" placeholder="Login ID" required="yes"/>
                </div>
                <div>
                    <input type="text" name="name" placeholder="Name" required="yes"/>
                </div>
                <div>
                    <input type="password" name="pass" placeholder="Password" required="yes"/>
                </div>
                <div>
                    <input type="text" name="city" placeholder="City" required="yes"/>
                </div>
                <div>
                    <input type="text" name="email" placeholder="Email" required="yes" />
                </div>
                 <div>
                    <input type="text" name="phone" placeholder="Phone Number" required="yes" pattern="[0-9]{10}"/>
                </div>
                <input type="submit" name="submit" value="Register"/>
            </fieldset>    
        </form>
    </div>
    
    <%	
		int no=Utility.parse(request.getParameter("no"));
		if(no==1)
		{%>
		
			<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showErrorToast', "Opp's,Something went wrong ..!");
		
		</script></div>		
		<%}
	%>
    
</body>
</html>
