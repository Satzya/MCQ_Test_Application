<%-- 
    Document   : Login_verify.jsp
    Created on : May 2, 2018, 11:32:11 AM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <div style="background-color: black;color:antiquewhite;font-size: 30px;">
            <h1 align="center">Multiple Choice Questions Test</h1>
        </div>
    <br><div ><h3 align="center">Each question carries 2 marks</h3></div>
    </head>
    <% 
//        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            if(session.getAttribute("id")==null){
                response.sendRedirect("User_Login.html");
            }
      
    %>
    <body>
        <%
            try{
        Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        
        PreparedStatement P=null;
        ResultSet R=null;
        %>
            <form action="MCQ_Page2.jsp" method="post"> 
                <%
                int i=1;
                P=C.prepareStatement("select * from questions");
                R=P.executeQuery();
                while(R.next() && i<=5){
                    %>
                    <table border="0px solid black;" style="font-size: 20px;" cellspacing="25">
                        <tr><td>Q
                                <% out.println(R.getInt("q_no"));%>.<% out.println(R.getString("q_name")); %></td>
                        </tr>
                        <tr>
                    <td colspan="1">A.<input type="radio" name="<%=i%>" value="<%out.print(R.getString("op_a"));%>">
                                <% out.println(R.getString("op_a"));%>
                            </td>
                            <td colspan="1">B.<input type="radio" name="<%=i%>" value="<%out.print(R.getString("op_b"));%>">
                                <% out.println(R.getString("op_b"));%>
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="1">C.<input type="radio" name="<%=i%>" value="<%out.print(R.getString("op_c"));%>">
                                <% out.println(R.getString("op_c"));%>
                            </td>
                            <td colspan="1">D.<input type="radio" name="<%=i%>" value="<%out.print(R.getString("op_d"));%>">
                                <% out.println(R.getString("op_d"));%>
                            </td>
                        </tr><hr>
                    </table>
                    
                    <% i++;
                }
%> 
<br> <div align="center"><input type="submit" value="Next" style="font-size: 20px;"></div>
                    </form> 
        <%
        }
        
            catch(Exception E){
            out.println("Failed "+E);
            }
        %>
    </body>
</html>
