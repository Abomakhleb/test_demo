package org.apache.jsp.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        \r\n");
      out.write("        <title>The Story - Free Bootstrap Theme</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400\">  <!-- Google web font \"Open Sans\" -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">                                                <!-- Bootstrap style -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flexslider.css\">                                                   <!-- Flexslider style -->       \r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/templatemo-style.css\">                                             <!-- Templatemo style -->\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("    </head>\r\n");
      out.write("     ");


String id = session.getAttribute("userid").toString();
System.out.print("login id is>>>>>>>>>>>>>>>>>>>>>>>"+id);
    

      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <body class=\"page\">\r\n");
      out.write("        \r\n");
      out.write("            <div style=\"position:relative; top: 10px; left:450px;\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<img src=\"title.png\"  style=\"width:1000px;height:100px;\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("            <!-- background images -->\r\n");
      out.write("          <div class=\"page-bg-imgs-list\">\r\n");
      out.write("                <img src=\"img/story-bg-1.jpg\" id=\"page-1-img\" class=\"main-img\" >\r\n");
      out.write("                <img src=\"img/story-bg-2.jpg\" id=\"page-2-img\" >\r\n");
      out.write("                <img src=\"img/story-bg-3.jpg\" id=\"page-3-img\">\r\n");
      out.write("                <img src=\"img/story-bg-4.jpg\" id=\"page-4-img\">\r\n");
      out.write("                                            \r\n");
      out.write("            </div> \r\n");
      out.write("            \r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5\">\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"header\">\r\n");
      out.write("\r\n");
      out.write("                            <!-- site title -->\r\n");
      out.write("                            <header class=\"box box-white\">\r\n");
      out.write("                                <a href=\"javascript:void(0)\" class=\"js-site-title\">\r\n");
      out.write("                                    <h1 class=\"box-text site-title-text\">END USERS</h1>    \r\n");
      out.write("                                </a>            \r\n");
      out.write("                            </header>\r\n");
      out.write("                            \r\n");
      out.write("                            <!-- site navigation -->\r\n");
      out.write("                            <nav class=\"js-nav\">\r\n");
      out.write("                                <ul class=\"nav-items-container\">\r\n");
      out.write("\r\n");
      out.write("                                    <li  class=\"block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left\">\r\n");
      out.write("                                        <a href=\"");
      out.print(request.getContextPath());
      out.write("/Profile_User?no=0\" target=\"afrm\" class=\"block-keep-ratio-content box-nav-item-link\" >\r\n");
      out.write("                                            <span class=\"box-text box-text-nav-item flexbox-center\">PROFILE UPDATES</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                      <li  class=\"block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left\">\r\n");
      out.write("                                        <a href=\"");
      out.print(request.getContextPath());
      out.write("/JSP/User/download_aggregatekey.jsp\" target=\"afrm\" class=\"block-keep-ratio-content box-nav-item-link\" >\r\n");
      out.write("                                            <span class=\"box-text box-text-nav-item flexbox-center\">Download AggregateKey</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("                                    <li  class=\"block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left\">\r\n");
      out.write("                                        <a  href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass_User?no=1&id=");
      out.print(id );
      out.write("\" target=\"afrm\" class=\"block-keep-ratio-content box-nav-item-link\">\r\n");
      out.write("                                        \r\n");
      out.write("                                            <span class=\"box-text box-text-nav-item flexbox-center\">PASSWORD SETTINGS</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    \r\n");
      out.write("                                     <li class=\"block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-right\">\r\n");
      out.write("                                        <a  href=\"");
      out.print(request.getContextPath());
      out.write("/JSP/User/select_publickey.jsp\"  target=\"afrm\" class=\"block-keep-ratio-content box-nav-item-link\">\r\n");
      out.write("                                            <span class=\"box-text box-text-nav-item flexbox-center\">DO YOU WANT TO DOWNLOAD FILE??</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                               <li  class=\"block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left\">\r\n");
      out.write("                                        <a href=\"");
      out.print(request.getContextPath());
      out.write("/SignOut?no=1\" class=\"block-keep-ratio-content box-nav-item-link\">\r\n");
      out.write("                                        \r\n");
      out.write("                                            <span class=\"box-text box-text-nav-item flexbox-center\">LOGOUT</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                   \r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("                                  \r\n");
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </nav>    \r\n");
      out.write("                        </div> \r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7\">\r\n");
      out.write("                        <div class=\"content-wrapper js-content-wrapper\">\r\n");
      out.write("                           \r\n");
      out.write("                       \r\n");
      out.write("                            <section data-page-id=\"page-2\" class=\"content content-gallery js-content\">\r\n");
      out.write("                                \r\n");
      out.write("                                <header class=\"box box-black margin-b-20\">\r\n");
      out.write("                                    <h2 class=\"box-text page-title-text\">Galllery</h2>\r\n");
      out.write("                                </header>\r\n");
      out.write("                                \r\n");
      out.write("                                <div class=\"content-text content-text-gallery\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    <p>Credits go to <a rel=\"nofollow\" href=\"http://unsplash.com\">Unsplash</a> for images.</p>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"flexslider-wrapper\">\r\n");
      out.write("\r\n");
      out.write("                                        <div id=\"slider\" class=\"flexslider\">\r\n");
      out.write("                                            <ul class=\"slides\">\r\n");
      out.write("                                                <li><img src=\"img/slider/slide1.jpg\" alt=\"Slide 1\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/slide2.jpg\" alt=\"Slide 2\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/slide3.jpg\" alt=\"Slide 3\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/slide4.jpg\" alt=\"Slide 4\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/slide5.jpg\" alt=\"Slide 5\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/slide6.jpg\" alt=\"Slide 6\" /></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div> #slider\r\n");
      out.write("                                      \r\n");
      out.write("                                        <div id=\"carousel\" class=\"flexslider\">\r\n");
      out.write("                                            <ul class=\"slides\">\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb1.jpg\" alt=\"Thumbnail 1\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb2.jpg\" alt=\"Thumbnail 2\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb3.jpg\" alt=\"Thumbnail 3\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb4.jpg\" alt=\"Thumbnail 4\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb5.jpg\" alt=\"Thumbnail 5\" /></li>\r\n");
      out.write("                                                <li><img src=\"img/slider/thumb6.jpg\" alt=\"Thumbnail 6\" /></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>  #carousel\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        \r\n");
      out.write("                                </div>            \r\n");
      out.write("\r\n");
      out.write("                            </section>\r\n");
      out.write("                            \r\n");
      out.write("                            <!-- services -->\r\n");
      out.write("                            <section data-page-id=\"page-3\" class=\"content js-content\">\r\n");
      out.write("                                \r\n");
      out.write("                                <header class=\"box box-black margin-b-20\">\r\n");
      out.write("                                    <h2 class=\"box-text page-title-text\">Services</h2>\r\n");
      out.write("                                </header>\r\n");
      out.write("                                \r\n");
      out.write("                                <div class=\"content-text\">\r\n");
      out.write("                                    <p>Download the story theme from templatemo. Quisque placerat turpis non tortor fringilla, in ornare magna eleifend. Etiam mattis varius fringilla.\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                    <h4>Sub Title One</h4>\r\n");
      out.write("                                    <p>Nullam tortor mauris, bibendum ac ex vel, auctor congue est. Aenean quis tellus molestie, laoreet massa a, maximus est. Interdum et malesuada fames ac ante ipsum primis. \r\n");
      out.write("                                    </p>\r\n");
      out.write("                                    <h4>Sub Title Two</h4>\r\n");
      out.write("                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut sapien quis ante faucibus tempus. Nam ut dui vitae tellus vehicula porttitor in nec lorem.\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                </div>            \r\n");
      out.write("\r\n");
      out.write("                            </section> \r\n");
      out.write("\r\n");
      out.write("                          \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                    \r\n");
      out.write("               \r\n");
      out.write("\r\n");
      out.write("            </div>  <!-- .container-fluid -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"preloader\">\r\n");
      out.write("            <div id=\"status\">&nbsp;</div>\r\n");
      out.write("        </div><!-- /#preloader -->      \r\n");
      out.write("            \r\n");
      out.write("        <!-- load JS files -->\r\n");
      out.write("        <script src=\"js/jquery-1.11.3.min.js\"></script> <!-- jQuery -->\r\n");
      out.write("        <script src=\"js/jquery.flexslider-min.js\"></script> <!-- Flex Slider -->\r\n");
      out.write("        <script src=\"js/jquery.backstretch.min.js\"></script> <!-- Backstretch http://srobbin.com/jquery-plugins/backstretch/ -->\r\n");
      out.write("        <script src=\"js/templatemo-script.js\"></script> <!-- Templatemo scripts -->\r\n");
      out.write("    <div id=\"contentframe\" style=\"position:relative; top:-500px; left:500px;\">\r\n");
      out.write("\t\t<iframe frameborder=\"0\" scrolling=\"auto\" name=\"afrm\" height=\"500\" width=\"700\" top=\"500\" style;>\r\n");
      out.write("\t\t</iframe>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
