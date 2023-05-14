package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navigation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Navigation</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar nav p1-nav-container bg-info sticky-top\">\n");
      out.write("            <div class=\"container-fluid px-5 \">\n");
      out.write("                <div class=\"p1-img1-box\">\n");
      out.write("                    <a href=\"Home.jsp\"><img src=\"icon_png/logo.png\" class=\"p1-img1\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"p1-img2-box\">\n");
      out.write("                    <a href=\"#\"><img src=\"icon_png/notification.png\" class=\"p1-img2 p-3\"></a>\n");
      out.write("                    <a href=\"#\"><img src=\"icon_png/inbox.png\" class=\"p1-img2 p-3\"></a>\n");
      out.write("                    <a href=\"#\"><img src=\"icon_png/video.png\" class=\"p1-img2 p-3\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"p1-search-box p-2\">\n");
      out.write("                    <input type=\"search\" class=\"p1-search p1-nav-search form-control d-inline\" placeholder=\"What are you looking for?\" style=\"width:70%\">\n");
      out.write("                    <input type=\"button\" value=\"search\" class=\" form-control btn-outline-primary nav-search rounded-1 d-inline\" style=\"width:20%\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"dropstart\">\n");
      out.write("                    <div class=\"align-content-center d-inline justify-content-center\">\n");
      out.write("                        <img src=\"icon_png/male.png\" alt=\"Dropdown Toggle\" class=\"dropdown-toggle rounded-5 p1-profile-img\" data-bs-toggle=\"dropdown\" height=\"40px\">\n");
      out.write("                        <span>");
      out.print( session.getAttribute("session_name") );
      out.write("&nbsp");
      out.print( session.getAttribute("session_surname") );
      out.write("</span>\n");
      out.write("                        <ul class=\"dropdown-menu \">\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"Home.jsp\">Home</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"myProfile.jsp\">My Profile</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"editProfile.jsp\">Edit My profile</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"logout\">Logout</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                       \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
