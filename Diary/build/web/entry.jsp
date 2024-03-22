<%-- 
    Document   : index
    Created on : 22 Mar 2024, 1:15:52 PM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diary</title>
    </head>
    <body>
        <h2>diary entry</h2>
        <form name="Details" action="process.jsp" method="POST">
       
        <table border="1">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Event</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="date" value="dd/month/yyyy" /></td>
                    <td><input type="text" name="event" value="type your event here!" size="50" /></td>
                </tr>
           

            </tbody>
        </table>
             <input type="submit" value="Submit" name="submit" />
             
 </form>
    </body>
</html>

