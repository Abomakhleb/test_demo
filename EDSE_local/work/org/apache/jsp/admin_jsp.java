package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta name=\"keywords\" content=\"\" />\r\n");
      out.write("<meta name=\"description\" content=\"\" />\r\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Simpledisplay by FCT</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Arvo\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"jquery/jquery-1.4.2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"jquery/jquery.gallerax-0.2.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("@import \"gallery.css\";\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div id=\"logo\">\r\n");
      out.write("\t\t\t<!-- <h1><a href=\"#\">SimpleDisplay</a></h1> -->\r\n");
      out.write("\t\t\t<img src=\"title.png\"  style=\"width:1000px;height:100px;\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end #header -->\r\n");
      out.write("\t<div id=\"menu\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li class=\"current_page_item\"><a href=\"index.jsp\">ABOUT CLOUD</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"admin.jsp\">ADMIN LOGIN</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"user.jsp\">USER LOGIN</a></li>\r\n");
      out.write("\t\t\t<!-- <li><a href=\"#\">About</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Links</a></li>\r\n");
      out.write("\t\t\t<li class=\"last\"><a href=\"#\">Contact</a></li> -->\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"two-columns\">\r\n");
      out.write("\t <form  action=\"");
      out.print(request.getContextPath());
      out.write("/AdminLogin\" method=\"post\"> \r\n");
      out.write("\t\t <div id=\"col1\" style=\" position:absolute;   top:400px; left: 300px\">\r\n");
      out.write("\t\t\t<div class=\"main-wrap\">\r\n");
      out.write("        <div class=\"login-main\">\r\n");
      out.write("        <p>Admin Login</p>   \r\n");
      out.write("            <input type=\"text\" name=\"userid\" placeholder=\"user name\" class=\"box1 border1\">\r\n");
      out.write("            <input type=\"password\" name=\"password\" placeholder=\"password\" class=\"box1 border2\">\r\n");
      out.write("            <input type=\"submit\" class=\"send\" value=\"Signin\">\r\n");
      out.write("           <!--  <input type=\"submit\" value=\"Signin\"> --> \r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div id=\"col2\"><img src=\"images/pics01.jpg\" alt=\"\" width=\"260\" height=\"240\" class=\"image-style\" />\r\n");
      out.write("\t\t\t<div class=\"text-style\">HEY WITH MORE SECURITY:)</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</font>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end #menu -->\r\n");
      out.write("\t<div id=\"three-columns\">\r\n");
      out.write("\t\t<div id=\"column1\">\r\n");
      out.write("\t\t\t<h2>Encryption</h2>\r\n");
      out.write("\t\t\t<p>Encryption can be achieved using Cryptograpy technique</p>\r\n");
      out.write("\t\t\t<p><a href=\"#\" class=\"link-style\">Read More</a></p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"column2\">\r\n");
      out.write("\t\t\t<h2>Keyword Search</h2>\r\n");
      out.write("\t\t\t<p>Keyword search can be acheived using TF*IDF model</p>\r\n");
      out.write("\t\t\t<p><a href=\"#\" class=\"link-style\">Read More</a></p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"column3\">\r\n");
      out.write("\t\t\t<h2>Dynamic Update</h2>\r\n");
      out.write("\t\t\t<p>Dynamic Deletion and Insertion using cloud computing</p>\r\n");
      out.write("\t\t\t<p><a href=\"#\" class=\"link-style\">Read More</a></p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"welcome\">\r\n");
      out.write("\t\t<h2 class=\"title\"><a href=\"#\">Welcome to Cloud Computing</a></h2>\r\n");
      out.write("\t\t<div class=\"entry\">\r\n");
      out.write("\t\t\t<p>This is <strong>Cloud Computing </strong>has been considered as a new\r\n");
      out.write("model of enterprise IT infrastructure, which can\r\n");
      out.write("organize huge resource of computing, storage and applications, and enable users to enjoy ubiquitous, convenient\r\n");
      out.write("and on-demand network access to a shared pool of\r\n");
      out.write("configurable computing resources with great efficiency\r\n");
      out.write("and minimal economic overhead.</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"post\">\r\n");
      out.write("\t\t\t\t\t<p style=\"color:blue;\"><b>INTRODUCTION</b></p>\r\n");
      out.write("\t\t\t\t\t\t<!-- <h2 class=\"title\"><a href=\"#\"></a></h2> -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"entry\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>CLOUD computing has been considered as a new\r\n");
      out.write("model of enterprise IT infrastructure, which can\r\n");
      out.write("organize huge resource of computing, storage and applications, and enable users to enjoy ubiquitous, convenient\r\n");
      out.write("and on-demand network access to a shared pool of\r\n");
      out.write("configurable computing resources with great efficiency\r\n");
      out.write("and minimal economic overhead. Attracted by these\r\n");
      out.write("appealing features, both individuals and enterprises are\r\n");
      out.write("motivated to outsource their data to the cloud, instead of\r\n");
      out.write("purchasing software and hardware to manage the data\r\n");
      out.write("themselves</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- end #content -->\r\n");
      out.write("\t\t\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<h2>KEYWORDS</h2>\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Searchable encryption</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Multi-keyword ranked search</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Dynamic update</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Cloud computing</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">TF*IDF model</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Indexing</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- end #sidebar -->\r\n");
      out.write("\t\t\t\t<div style=\"clear: both;\">&nbsp;</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end #page --> \r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t<p>Cloud Computing  <a href=\"http://www.freecsstemplates.org\"></a>.</p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");


String k=null;
k=request.getParameter("no");
 int no=0;
 if(k!=null)
 {
	 no=Integer.parseInt(k); 
 }




      out.write("\r\n");
      out.write(" \r\n");
      out.write(" ");

if(no==1)
{

      out.write("\r\n");
      out.write("<div style=\"position: absolute;top: 150px;\">\r\n");
      out.write("<div class=\"success\" id=\"message\" >\t\r\n");
      out.write("\t<script>\r\n");
      out.write("\r\n");
      out.write("    alert('Error in login Please enter userid and password currectly')\r\n");
      out.write("\r\n");
      out.write("  </script>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
}else if(no==6)
{

      out.write("\r\n");
      out.write("<div style=\"position: absolute;top: 150px;\">\r\n");
      out.write("<div class=\"success\" id=\"message\" >\t\r\n");
      out.write("\t<script>\r\n");
      out.write("\r\n");
      out.write("    alert('Logout successfully')\r\n");
      out.write("\r\n");
      out.write("  </script>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
} else
{
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
} 
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
