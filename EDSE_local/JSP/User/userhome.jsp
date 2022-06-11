<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>The Story - Free Bootstrap Theme</title>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400">  <!-- Google web font "Open Sans" -->
        <link rel="stylesheet" href="css/bootstrap.min.css">                                                <!-- Bootstrap style -->
        <link rel="stylesheet" href="css/flexslider.css">                                                   <!-- Flexslider style -->       
        <link rel="stylesheet" href="css/templatemo-style.css">                                             <!-- Templatemo style -->

       
    </head>
     <%

String id = session.getAttribute("userid").toString();
System.out.print("login id is>>>>>>>>>>>>>>>>>>>>>>>"+id);
    
%>
    
    <body class="page">
        
            <div style="position:relative; top: 10px; left:450px;">
			
			<img src="title.png"  style="width:1000px;height:100px;">
		</div>
            <!-- background images -->
          <div class="page-bg-imgs-list">
                <img src="img/story-bg-1.jpg" id="page-1-img" class="main-img" >
                <img src="img/story-bg-2.jpg" id="page-2-img" >
                <img src="img/story-bg-3.jpg" id="page-3-img">
                <img src="img/story-bg-4.jpg" id="page-4-img">
                                            
            </div> 
            
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5">
                        
                        <div class="header">

                            <!-- site title -->
                            <header class="box box-white">
                                <a href="javascript:void(0)" class="js-site-title">
                                    <h1 class="box-text site-title-text">END USERS</h1>    
                                </a>            
                            </header>
                            
                            <!-- site navigation -->
                            <nav class="js-nav">
                                <ul class="nav-items-container">

                                    <li  class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
                                        <a href="<%=request.getContextPath()%>/Profile_User?no=0" target="afrm" class="block-keep-ratio-content box-nav-item-link" >
                                            <span class="box-text box-text-nav-item flexbox-center">PROFILE UPDATES</span>
                                        </a>
                                    </li>
                                      <li  class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
                                        <a href="<%=request.getContextPath()%>/JSP/User/download_aggregatekey.jsp" target="afrm" class="block-keep-ratio-content box-nav-item-link" >
                                            <span class="box-text box-text-nav-item flexbox-center">Download AggregateKey</span>
                                        </a>
                                    </li>
                                   

                                    <li  class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
                                        <a  href="<%=request.getContextPath() %>/ChangePass_User?no=1&id=<%=id %>" target="afrm" class="block-keep-ratio-content box-nav-item-link">
                                        
                                            <span class="box-text box-text-nav-item flexbox-center">PASSWORD SETTINGS</span>
                                        </a>
                                    </li>
                                    
                                     <li class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-right">
                                        <a  href="<%=request.getContextPath()%>/JSP/User/select_publickey.jsp"  target="afrm" class="block-keep-ratio-content box-nav-item-link">
                                            <span class="box-text box-text-nav-item flexbox-center">DO YOU WANT TO DOWNLOAD FILE??</span>
                                        </a>
                                    </li>
                               <li  class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
                                        <a href="<%=request.getContextPath()%>/SignOut?no=1" class="block-keep-ratio-content box-nav-item-link">
                                        
                                            <span class="box-text box-text-nav-item flexbox-center">LOGOUT</span>
                                        </a>
                                    </li>
                                   
                                   

                                  

                                    
                                </ul>
                            </nav>    
                        </div> 

                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
                        <div class="content-wrapper js-content-wrapper">
                           
                       
                            <section data-page-id="page-2" class="content content-gallery js-content">
                                
                                <header class="box box-black margin-b-20">
                                    <h2 class="box-text page-title-text">Galllery</h2>
                                </header>
                                
                                <div class="content-text content-text-gallery">
                                    
                                    <p>Credits go to <a rel="nofollow" href="http://unsplash.com">Unsplash</a> for images.</p>

                                    <div class="flexslider-wrapper">

                                        <div id="slider" class="flexslider">
                                            <ul class="slides">
                                                <li><img src="img/slider/slide1.jpg" alt="Slide 1" /></li>
                                                <li><img src="img/slider/slide2.jpg" alt="Slide 2" /></li>
                                                <li><img src="img/slider/slide3.jpg" alt="Slide 3" /></li>
                                                <li><img src="img/slider/slide4.jpg" alt="Slide 4" /></li>
                                                <li><img src="img/slider/slide5.jpg" alt="Slide 5" /></li>
                                                <li><img src="img/slider/slide6.jpg" alt="Slide 6" /></li>
                                            </ul>
                                        </div> #slider
                                      
                                        <div id="carousel" class="flexslider">
                                            <ul class="slides">
                                                <li><img src="img/slider/thumb1.jpg" alt="Thumbnail 1" /></li>
                                                <li><img src="img/slider/thumb2.jpg" alt="Thumbnail 2" /></li>
                                                <li><img src="img/slider/thumb3.jpg" alt="Thumbnail 3" /></li>
                                                <li><img src="img/slider/thumb4.jpg" alt="Thumbnail 4" /></li>
                                                <li><img src="img/slider/thumb5.jpg" alt="Thumbnail 5" /></li>
                                                <li><img src="img/slider/thumb6.jpg" alt="Thumbnail 6" /></li>
                                            </ul>
                                        </div>  #carousel

                                    </div>
                                        
                                </div>            

                            </section>
                            
                            <!-- services -->
                            <section data-page-id="page-3" class="content js-content">
                                
                                <header class="box box-black margin-b-20">
                                    <h2 class="box-text page-title-text">Services</h2>
                                </header>
                                
                                <div class="content-text">
                                    <p>Download the story theme from templatemo. Quisque placerat turpis non tortor fringilla, in ornare magna eleifend. Etiam mattis varius fringilla.
                                    </p>
                                    <h4>Sub Title One</h4>
                                    <p>Nullam tortor mauris, bibendum ac ex vel, auctor congue est. Aenean quis tellus molestie, laoreet massa a, maximus est. Interdum et malesuada fames ac ante ipsum primis. 
                                    </p>
                                    <h4>Sub Title Two</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut sapien quis ante faucibus tempus. Nam ut dui vitae tellus vehicula porttitor in nec lorem.
                                    </p>
                                </div>            

                            </section> 

                          
                        </div>
                    </div>

                </div>
                    
               

            </div>  <!-- .container-fluid -->

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div><!-- /#preloader -->      
            
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script> <!-- jQuery -->
        <script src="js/jquery.flexslider-min.js"></script> <!-- Flex Slider -->
        <script src="js/jquery.backstretch.min.js"></script> <!-- Backstretch http://srobbin.com/jquery-plugins/backstretch/ -->
        <script src="js/templatemo-script.js"></script> <!-- Templatemo scripts -->
    <div id="contentframe" style="position:relative; top:-500px; left:500px;">
		<iframe frameborder="0" scrolling="auto" name="afrm" height="500" width="700" top="500" style;>
		</iframe>
		</div>
	 
    </body>
</html>