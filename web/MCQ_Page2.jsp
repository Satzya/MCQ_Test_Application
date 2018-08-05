<%-- 
    Document   : MCQ_Page2
    Created on : May 2, 2018, 9:12:23 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <div style="background-color: black;color:antiquewhite;font-size: 30px;">
            <h1 align="center">Multiple Choice Questions Test</h1>
        </div>
    </head>
    <%
        //response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("id")==null){
                response.sendRedirect("User_Login.html");
            }
        
        HttpSession S=request.getSession();
        String a=request.getParameter("1");
        S.setAttribute("r1",a);
        a=request.getParameter("2");
        S.setAttribute("r2",a);
        a=request.getParameter("3");
        S.setAttribute("r3",a);
        a=request.getParameter("4");
        S.setAttribute("r4",a);
        a=request.getParameter("5");
        S.setAttribute("r5",a);
%>
    <body>
        
        <%
            try{
        Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        %>
            <form action="User_Score.jsp" method="post"> 
                <%
                int i=6;
                ResultSet R;
                PreparedStatement P;
                P=C.prepareStatement("select * from questions where q_no>5");
                R=P.executeQuery();
                while(R.next()){
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



<div align="center">
    
    <form>    <button formaction="/MCQ_Test/MCQ_Page1.jsp" style="font-size: 20px;">Back</button> </form>
    
    <input type="submit" value="Next" style="font-size: 20px;"></div>
                    </form> 
        <%
        }
            catch(Exception E){
            out.println("Failed "+E);
            }
        %>
        
    </body>
        
</html>
