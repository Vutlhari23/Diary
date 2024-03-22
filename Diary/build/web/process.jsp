<%-- 
    Document   : process
    Created on : 22 Mar 2024, 1:27:53 PM
    Author     : vutlh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
       String date = request.getParameter("date");
   String event = request.getParameter("event");
    String abc = "Insert into diary values('"+date+"','"+event+"')";
    

   Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diary", "root", "");
  
  Statement st = con.createStatement();
  
 
  
  System.out.print(st.execute(abc));
  
   System.out.print("mdhdhdh");
    

    %>
    <h1>entry succesful</h1>
    
    <a href="view.jsp">viewDiary</a>



