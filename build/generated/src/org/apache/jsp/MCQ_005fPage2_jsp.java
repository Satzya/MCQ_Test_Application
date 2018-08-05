package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class MCQ_005fPage2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <div style=\"background-color: black;color:antiquewhite;font-size: 30px;\">\n");
      out.write("            <h1 align=\"center\">Multiple Choice Questions Test</h1>\n");
      out.write("        </div>\n");
      out.write("    </head>\n");
      out.write("    ");

        HttpSession S=request.getSession();
        String a=request.getParameter("1");
        S.setAttribute("r1",a);
        out.println(a);
        a=request.getParameter("2");
        S.setAttribute("r2",a);
        a=request.getParameter("3");
        S.setAttribute("r3",a);
        a=request.getParameter("4");
        S.setAttribute("r4",a);
        a=request.getParameter("5");
        S.setAttribute("r5",a);

      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

            try{
        Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        
      out.write("\n");
      out.write("            <form action=\"User_Score.jsp\" method=\"post\"> \n");
      out.write("                ");

                int i=6;
                ResultSet R;
                PreparedStatement P;
                P=C.prepareStatement("select * from questions where q_no>5");
                R=P.executeQuery();
                while(R.next()){
                    
      out.write("\n");
      out.write("                    <table border=\"0px solid black;\" style=\"font-size: 20px;\" cellspacing=\"25\">\n");
      out.write("                        <tr><td>Q\n");
      out.write("                                ");
 out.println(R.getInt("q_no"));
      out.write('.');
 out.println(R.getString("q_name")); 
      out.write("</td>    \n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"1\">A.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.println(R.getString("op_a"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_a"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td colspan=\"1\">B.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.println(R.getString("op_b"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_b"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                        </tr>   \n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"1\">C.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.println(R.getString("op_c"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_c"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td colspan=\"1\">D.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.println(R.getString("op_d"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_d"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                        </tr><hr>\n");
      out.write("                    </table>\n");
      out.write("                    \n");
      out.write("                    ");
 i++;
                }

      out.write(" \n");
      out.write("<br> <input type=\"text\" name=\"t2\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<div align=\"center\">\n");
      out.write("    \n");
      out.write("    <form>    <button formaction=\"/MCQ_Test/MCQ_Page1.jsp\" style=\"font-size: 20px;\">Back</button> </form>\n");
      out.write("    \n");
      out.write("    <input type=\"submit\" value=\"Next\" style=\"font-size: 20px;\"></div>\n");
      out.write("                    </form> \n");
      out.write("        ");

        }
            catch(Exception E){
            out.println("Failed "+E);
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("        \n");
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
