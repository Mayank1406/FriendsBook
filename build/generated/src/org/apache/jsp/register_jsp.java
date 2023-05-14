package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/register.css\">\n");
      out.write("  <script src=\"main.js\"></script>\n");
      out.write("\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("  <title>register</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <div class=\"pr-container bg-info\">\n");
      out.write("\n");
      out.write("    <div class=\"logo\">\n");
      out.write("      <a href=\"index.jsp\"><img src=\"icon_png/logo2.png\" alt=\"logo\" height=\"100px\" width=\"200px\"></a>\n");
      out.write("  </div>\n");
      out.write("      <div class=\"pr-boxer\">\n");
      out.write("        <div class=\"pr-box bg-info-subtle\">\n");
      out.write("          <h1 class=\"pt-3 d-block text-center \">Sign Up</h1>\n");
      out.write("          \n");
      out.write("          <script>\n");
      out.write("              function regValidation()\n");
      out.write("              {\n");
      out.write("                  var name = document.regform.name1.value;\n");
      out.write("                  var surname = document.regform.surname1.value;\n");
      out.write("                  var username = document.regform.username1.value;\n");
      out.write("                  var email = document.regform.email1.value;\n");
      out.write("                  var pass = document.regform.pass1.value;\n");
      out.write("                  var day = document.regform.day1.value;\n");
      out.write("                  var month= document.regform.month1.value;\n");
      out.write("                  var year = document.regform.year1.value;\n");
      out.write("                  var gender = document.regform.gender1.value;\n");
      out.write("                  var city = document.regform.city1.value;                  \n");
      out.write("                  \n");
      out.write("                  var name_pattern=/^[A-Za-z]+$/;\n");
      out.write("                  var surname_pattern=/^[A-Za-z]+$/;\n");
      out.write("                  var username_pattern=/^[A-Za-z0-9_]{4,16}$/;\n");
      out.write("                  var email_pattern=/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$/;\n");
      out.write("                  var pass_pattern=/^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{6,20})/;\n");
      out.write("                  \n");
      out.write("                  if(!name.match(name_pattern))\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid name\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(!surname.match(surname_pattern))\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid surname\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(!username.match(username_pattern))\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid username\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(!email.match(email_pattern))\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid email\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(!pass.match(pass_pattern))\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid pass\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(day === \"Day\")\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid day\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(month === \"Months\")\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid month\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(year === \"Year..\")\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid year\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(gender === \"\")\n");
      out.write("                  {\n");
      out.write("                      alert(\"not a valid gender\")\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else if(city===\"City..\")\n");
      out.write("                  {\n");
      out.write("                      alert(\"Select city\");\n");
      out.write("                      return false;\n");
      out.write("                  }\n");
      out.write("                  else\n");
      out.write("                  {\n");
      out.write("                      document.regform.action=\"Register\";\n");
      out.write("                      document.regform.submit();\n");
      out.write("                  }  \n");
      out.write("              }\n");
      out.write("              \n");
      out.write("\n");
      out.write("          </script>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          <form method=\"post\" name=\"regform\" onsubmit=\"return regValidation()\">\n");
      out.write("              <div class=\"d-flex flex-row justify-content-around h-3\">\n");
      out.write("                <div class=\"register-name pr-padding\">\n");
      out.write("                  <input type=\"text\" name=\"name1\" class=\"name placeholder-all form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Enter your name without numbers\" placeholder=\"Name\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"register-surname pr-padding\">\n");
      out.write("                  <input type=\"text\" name=\"surname1\" class=\"surname placeholder-all form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Enter your lastname without numbers\" placeholder=\"Last Name\">\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              \n");
      out.write("              <div class=\"padding-signup-1\">\n");
      out.write("                <div class=\"register-email pr-padding\">\n");
      out.write("                  <input type=\"text\" name=\"username1\" class=\"placeholder-all form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Enter username must be unique it contain @ on start and number eg: @name12\" placeholder=\"UserName\">\n");
      out.write("                  <!--<div class=\"alert alert-danger\">Username already exist</div>-->\n");
      out.write("                </div>\n");
      out.write("                  \n");
      out.write("                <div class=\"padding-signup-1\">\n");
      out.write("                  <div class=\"register-email pr-padding\">\n");
      out.write("                    <input type=\"email\" name=\"email1\" class=\"email placeholder-all form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"eg: Example@gmail.com\" placeholder=\"Mobile Number or E-mail\">\n");
      out.write("                    <!--<div class=\"alert alert-danger \">email already exist</div>-->\n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <div class=\"register-password pr-padding\">\n");
      out.write("                    <input type=\"password\" name=\"pass1\" class=\"password placeholder-all form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Pa**word must contain caps, number & special character\"  placeholder=\"New Password\">\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"register-password pr-padding\">\n");
      out.write("                <label for=\"r-dob\" class=\"form-label\" >Date of Birth?</label>\n");
      out.write("                <div class=\"text-droplist d-flex justify-content-around\">\n");
      out.write("                  <select id=\"day\" name=\"day1\" class=\"register-p form-control border-1 border-info\" id=\"r-dob\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select Day\">\n");
      out.write("                    <option selected=\"\" disabled=\"\" value=\"Day\">Day</option>\n");
      out.write("                    <script>\n");
      out.write("                      for (var i = 1; i <= 31; i++) {\n");
      out.write("                        document.write(\"<option value='\" + i + \"'>\" + i + \"</option>\");\n");
      out.write("                      }\n");
      out.write("                    </script>\n");
      out.write("                  </select>\n");
      out.write("\n");
      out.write("                  <select id=\"month\" name=\"month1\" class=\"form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select month\">\n");
      out.write("                    <option selected=\"\" disabled=\"\" value=\"Months\">Months</option>\n");
      out.write("                    <option value=\"01\">January</option>\n");
      out.write("                    <option value=\"02\">February</option>\n");
      out.write("                    <option value=\"03\">March</option>\n");
      out.write("                    <option value=\"04\">April</option>\n");
      out.write("                    <option value=\"05\">May</option>\n");
      out.write("                    <option value=\"06\">June</option>\n");
      out.write("                    <option value=\"07\">July</option>\n");
      out.write("                    <option value=\"08\">August</option>\n");
      out.write("                    <option value=\"09\">September</option>\n");
      out.write("                    <option value=\"10\">October</option>\n");
      out.write("                    <option value=\"11\">November</option>\n");
      out.write("                    <option value=\"12\">December</option>\n");
      out.write("                  </select>\n");
      out.write("\n");
      out.write("                  <select id=\"year\" name=\"year1\" class=\"pr-year form-control border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select year\">\n");
      out.write("                    <option selected=\"\" disabled=\"\" value=\"Year..\">Year..</option>\n");
      out.write("                    <script>\n");
      out.write("                      var currentYear = new Date().getFullYear();\n");
      out.write("                      for (var i = currentYear; i >= currentYear - 100; i--) {\n");
      out.write("                        document.write(\"<option value='\" + i + \"'>\" + i + \"</option>\");\n");
      out.write("                      }\n");
      out.write("                    </script>\n");
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"register-password pr-padding\">\n");
      out.write("                <label for=\"r-gender\" class=\"form-label\">Gender?</label>\n");
      out.write("                <div class=\"d-flex flex-row justify-content-around\">\n");
      out.write("                  <div>\n");
      out.write("                    <input type=\"radio\" name=\"gender1\" class=\"form-check-input border-1 border-info\" id=\"gridRadios1\" value=\"Male\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select Male\">Male\n");
      out.write("                  </div>\n");
      out.write("                  <div>\n");
      out.write("                    <input type=\"radio\" name=\"gender1\" class=\"form-check-input border-1 border-info\" id=\"gridRadios1\" value=\"Female\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select Female\">Female\n");
      out.write("                  </div>\n");
      out.write("                  <div>\n");
      out.write("                    <input type=\"radio\" name=\"gender1\" class=\"form-check-input border-1 border-info\" id=\"gridRadios1\" value=\"Others\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select Others\">Others\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"register-password pr-padding\">\n");
      out.write("                <select class=\"form-select form-select-sm border-1 border-info\" name=\"city1\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"Select city\">\n");
      out.write("                  <option selected=\"\" disabled=\"\" value=\"City..\">City..</option>\n");
      out.write("                    <option value=\"Mumbai\">Mumbai</option>\n");
      out.write("                    <option value=\"Pune\">Pune</option>\n");
      out.write("                    <option value=\"Bangaluru\">Bengaluru</option>\n");
      out.write("                    <option value=\"Chennai\">Chennai</option>\n");
      out.write("                    <option value=\"Ahemdabad\">Ahemdabad</option>\n");
      out.write("                    <option value=\"Jaipur\">Jaipur</option>\n");
      out.write("                    <option value=\"custom\">Custom</option>\n");
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("              \n");
      out.write("\n");
      out.write("              <div class=\"login-form pr-button-div \">\n");
      out.write("                  <input type=\"submit\" value=\"Register\" class=\"btn btn-info text-white border-1 border-info\" data-toggle=\"tooltip\"  data-bs-placement=\"bottom\" title=\"want to submit\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </body>\n");
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
