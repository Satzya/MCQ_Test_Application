<%-- 
    Document   : Out
    Created on : May 2, 2018, 9:39:22 AM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  Connection h=null;
            Class.forName("com.mysql.jdbc.Driver");
        h=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        PreparedStatement P=h.prepareStatement("select * from ans");
        ResultSet R=P.executeQuery();
        while(R.next())
        {   if(R.getInt(1)==8){
//            String f=R.getString(2);
            out.println(request.getParameter("1").equals(R.getString(2))+"  "+R.getString(2));}
        }
        %>
        
    </body>
</html>
