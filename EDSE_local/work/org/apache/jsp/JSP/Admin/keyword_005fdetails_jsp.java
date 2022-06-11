package org.apache.jsp.JSP.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.Database.*;
import com.supportclass.*;

public final class keyword_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Res/CSS/style1.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/jsk/pagination.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<center>\r\n");



ResultSet rs = AdminDAO.getKeyword_Weight();





      out.write("\r\n");
      out.write("<br></br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"CSSTableGenerator\" style=\"width:580px;height:150px; top:50px\">\r\n");
      out.write("<table   BORDERCOLOR=\"#FFFFFF\"  width=\"20%\"  BORDER=\"20\" CELLPADDING=\"10\" CELLSPACING=\"3\"  class=\"pretty-table\" border=\"1\" id=\"user\">\r\n");
      out.write("    <h2 style=\"color:#069\"><font color=\"white\">KeyWord Ranking Details</font></h2>\r\n");
      out.write("    <th scope=\"col\"><font color=\"white\">Key No</font></th>\r\n");
      out.write("    <th scope=\"col\"> <font color=\"white\">File_No</font></th>\r\n");
      out.write("    <th scope=\"col\"> <font color=\"white\">Keyword</font></th>\r\n");
      out.write("    <th scope=\"col\"><font color=\"white\"> Weightage</font></th>\r\n");
      out.write("     <th scope=\"col\"> <font color=\"white\">Keyword Rank</font></th>\r\n");
      out.write("    \r\n");
      out.write("  \r\n");
while(rs.next())
	{
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><font color=\"white\">");
      out.print(rs.getInt(1) );
      out.write("</font></td>\r\n");
      out.write("    \t<td><font color=\"white\">");
      out.print(rs.getString(2));
      out.write("</font></td>\r\n");
      out.write("    \t<td><font color=\"white\">");
      out.print(rs.getString(3));
      out.write("</font></td>\r\n");
      out.write("    \t<td><font color=\"white\">");
      out.print(rs.getString(4));
      out.write("</font></td>\r\n");
      out.write("    \t<td><font color=\"white\">");
      out.print(rs.getString(5));
      out.write("</font></td>\r\n");
      out.write("    \t\r\n");
      out.write("  </tr>\r\n");

}

      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("</center>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"pageNavPosition\" style=\"position:absolute;top:480px;  color:white;  left:100px\"></div>\r\n");
      out.write("<script type=\"text/javascript\"><!--\r\n");
      out.write("        var pager = new Pager('user',5); \r\n");
      out.write("        pager.init(); \r\n");
      out.write("        pager.showPageNav('pager', 'pageNavPosition'); \r\n");
      out.write("        pager.showPage(1);\r\n");
      out.write("    //--></script>\r\n");
      out.write("    \r\n");
      out.write("</body></html>");
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
