package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/login.css\">\n");
      out.write("        <script src=\"main.js\"></script>\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\" rel=stylesheet>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <title>Register Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("    <div class=\"lp-container bg-info\">\n");
      out.write("        <div class=\"lp-divide container\">\n");
      out.write("        <div class=\"d-flex flex-row justify-content-around flex-wrap\">\n");
      out.write("            <div>\n");
      out.write("                <div class=\"lp-logo\">\n");
      out.write("                    <a href=\"#\"><img src=\"icon_png/logo2.png\" alt=\"logo\" height=\"200px\" width=\"300px\"></a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <script>\n");
      out.write("                function regValidation()\n");
      out.write("                {\n");
      out.write("                    var email = document.regform.email1.value;\n");
      out.write("                    var pass = document.regform.pass1.value;\n");
      out.write("                    var email_pattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$/;\n");
      out.write("                    var pass_pattern = /^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{6,20})/;\n");
      out.write("\n");
      out.write("                    if (!email.match(email_pattern))\n");
      out.write("                    {\n");
      out.write("                        alert(\"not a valid email\")\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                        else if (!pass.match(pass_pattern))\n");
      out.write("                    {\n");
      out.write("                        alert(\"not a valid pass\")\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    else\n");
      out.write("                    {\n");
      out.write("                        document.regform.action = \"Login\";\n");
      out.write("                        document.regform.submit();\n");
      out.write("                    }\n");
      out.write("                    }\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <div class=\"p-sm-3 bg-info-subtle\">\n");
      out.write("                <div>\n");
      out.write("                    <form action=\"Login\" method=\"post\">\n");
      out.write("                        <div class=\"lp-form-container lp-form\">\n");
      out.write("                            <div class=\"lp-login-email\">\n");
      out.write("                                <input type=\"email\" name=\"email1\" class=\"form-control lp-E-mail border-2 border-info\" placeholder=\"Email or Phone number\" style=\"font-size: 15px;\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"lp-password\">\n");
      out.write("                                <input type=\"password\" name=\"pass1\" class=\"lp-1-password form-control border-2 border-info\" placeholder=\"Password\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"lp-form\">\n");
      out.write("                            <div class=\"lp-button-div\">\n");
      out.write("                                <input type=\"submit\" value=\"Login\" class=\"btn btn-info text-white border-1 border-black form-control\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"text-lg-center\">\n");
      out.write("                                <a href=\"#\" class=\"lp-links\">Forget Your Password?</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                <div class=\"lp-button-div\">\n");
      out.write("                <a class=\"btn btn-success border-2 border-info\" href=\"register.jsp\" role=\"button\" aria-controls=\"collapseExample\"> Create a new account </a>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
