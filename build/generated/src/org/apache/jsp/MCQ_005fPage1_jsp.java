package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class MCQ_005fPage1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <div style=\"background-color: black;color:antiquewhite;font-size: 30px;\">\n");
      out.write("            <h1 align=\"center\">Multiple Choice Questions Test</h1>\n");
      out.write("        </div>\n");
      out.write("    <br><div ><h3 align=\"center\">Each question carries 2 marks</h3></div>\n");
      out.write("    </head>\n");
      out.write("    ");
 
        HttpSession S=request.getSession();
        String id=request.getParameter("id");
        S.setAttribute("id",id);
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            try{
        Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        
        PreparedStatement P=C.prepareStatement("select * from user where id=(?) and pswd=(?)");
        P.setInt(1, Integer.parseInt(request.getParameter("id")));
        P.setString(2, request.getParameter("pswd"));
        ResultSet R=P.executeQuery();
        if(R.next()){
            
      out.write(" \n");
      out.write("            <form action=\"MCQ_Page2.jsp\" method=\"post\"> \n");
      out.write("                ");

                int i=1;
                P=C.prepareStatement("select * from questions");
                R=P.executeQuery();
                while(R.next() && i<=5){
                    
      out.write("\n");
      out.write("                    <table border=\"0px solid black;\" style=\"font-size: 20px;\" cellspacing=\"25\">\n");
      out.write("                        <tr><td>Q\n");
      out.write("                                ");
 out.println(R.getInt("q_no"));
      out.write('.');
 out.println(R.getString("q_name")); 
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                    <td colspan=\"1\">A.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.print(R.getString("op_a"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_a"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td colspan=\"1\">B.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.print(R.getString("op_b"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_b"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"1\">C.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.print(R.getString("op_c"));
      out.write("\">\n");
      out.write("                                ");
 out.println(R.getString("op_c"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td colspan=\"1\">D.<input type=\"radio\" name=\"");
      out.print(i);
      out.write("\" value=\"");
out.print(R.getString("op_d"));
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
      out.write("<br> <div align=\"center\"><input type=\"submit\" value=\"Next\" style=\"font-size: 20px;\"></div>\n");
      out.write("                    </form> \n");
      out.write("        ");

        }
        else
            out.println(" Failed");  
        }
            catch(Exception E){
            out.println("Failed "+E);
            }
        
      out.write("\n");
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
