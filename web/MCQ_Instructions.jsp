<%-- 
    Document   : MCQ_Instructions
    Created on : May 6, 2018, 8:37:51 PM
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
    </head>
    <body>
        <%
            if(session.getAttribute("id")==null){
                response.sendRedirect("User_Login.html");
            }
            
        HttpSession S=request.getSession();
        String id=request.getParameter("id");
        S.setAttribute("id",id);
        try{
            Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        PreparedStatement P=C.prepareStatement("select * from user where id=(?) and pswd=(?)");
        P.setInt(1, Integer.parseInt(request.getParameter("id")));
        P.setString(2, request.getParameter("pswd"));
        ResultSet R=P.executeQuery();
        if(R.next()){
            %>
            <H2 align="center">Each question carries 2 marks and there are a total of 10 questions. Pass mark is 14.</H2><br>
            <form action="MCQ_Page1.jsp" align="center">
                <input type="submit" Value="Attempt Test" align="center" style="font-size:25px">
            </form>
            <%
        }
else{
    response.sendRedirect("User_Login.html");
}
        }
        catch(Exception E){
            
        }
        %>
    </body>
</html>
