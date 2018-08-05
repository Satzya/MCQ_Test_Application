<%-- 
    Document   : User_Score
    Created on : May 4, 2018, 4:40:26 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            #True{
                color:green;
            }
            #False{
                color:red;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <div style="background-color: black;color:antiquewhite;font-size: 30px;">
            <h1 align="center">Multiple Choice Questions Test Result</h1>
        </div>
    </head>
    <%  
        
        
        if(session.getAttribute("id")==null){
                response.sendRedirect("User_Login.html");
            }
        
        String r6=request.getParameter("6");
        String r7=request.getParameter("7");
        String r8=request.getParameter("8");
        String r9=request.getParameter("9");
        String r10=request.getParameter("10");
        String r1=(String)session.getAttribute("r1");
        String r2=(String)session.getAttribute("r2");
        String r3=(String)session.getAttribute("r3");
        String r4=(String)session.getAttribute("r4");
        String r5=(String)session.getAttribute("r5");
        String id=(String)session.getAttribute("id");
    %>
    <body>
        <h1 align="center">User ID:&nbsp;&nbsp;<%=id%></h1>
        <table border="1px solid red;" style="font-size: 30px;" cellspacing="3" align="center">
            <tr><th>Question No.</th><th>Correct Answer</th><th>Result</th></tr>
        <%
           try{
               int score=0;
        Connection C=null;
        Class.forName("com.mysql.jdbc.Driver");
        C=DriverManager.getConnection("jdbc:mysql://localhost:3306/MCQ_Test","root","root");
        PreparedStatement P=C.prepareStatement("select * from ans");
        ResultSet R=P.executeQuery();
        while(R.next()){
            switch(R.getInt(1)){
                case 1:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r1)){  //better to speciy r1 in equals as it contains null if no radio option is checked. So r1 doesnt hold any value.
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 2:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r2)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 3:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r3)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 4:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r4)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                
                case 5:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r5)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                
                case 6:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r6)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 7:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r7)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 8:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r8)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 9:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r9)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                case 10:{
                    %>
            <tr align="center"><td><%=R.getInt(1)%></td><td><%=R.getString(2)%></td>
                    <%
                    if(R.getString(2).equals(r10)){
                        score+=2;
                        %>
                        <td id="True"><%="Correct"%></td></tr>
                        <%
                    }
                    else{
                    %>
                        <td id="False"><%="Incorrect"%></td></tr>
                        <%
                    }
                    break;
                }
                default:{
//                    out.println("None");
                }
        }}
        
        %>
        
        
        <tr><td colspan="2">Total Score:</td><td><%=score%></td></tr>
            <%
            if(score>=14){
            %>
            <tr><td colspan="2">Status:</td><td id="True">Passed</td></tr>
            <%   } 
                else{
                %>
                <tr><td colspan="2">Status:</td><td id="False">Failed</td></tr>
            <%    
            }
            %>
        </table>

        <br>
        <form action="User_Login.html" method="post" align="center">
            <input type="submit" value="Login" style="font-size: 24px;">
        </form>
        
        <%
        
        
           }
           catch(Exception E){
           out.println(E);
}

session.invalidate();
        %>
    </body>
</html>

