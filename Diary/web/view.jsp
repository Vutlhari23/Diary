<%-- 
    Document   : view
    Created on : 22 Mar 2024, 2:36:06 PM
    Author     : vutlh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
   Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diary", "root", "");
  
  Statement st = con.createStatement();
  
  String out1 = "select * from diary";
  String date="";
  String event ="";
  ResultSet aaa = st.executeQuery(out1);
  

  
  
    %>
<%-- 
    Document   : index
    Created on : Mar 20, 2024, 6:09:17 PM
    Author     : Mecer
--%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>diary</title>
                <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css'>

<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js'></script>
<style>
body{margin-top:20px;}

.chat-online {
    color: #34ce57
}

.chat-offline {
    color: #e4606d
}

.chat-messages {
    display: flex;
    flex-direction: column;
    max-height: 800px;
    overflow-y: scroll
}

.chat-message-left,
.chat-message-right {
    display: flex;
    flex-shrink: 0
}

.chat-message-left {
    margin-right: auto
}

.chat-message-right {
    flex-direction: row-reverse;
    margin-left: auto
}
.py-3 {
    padding-top: 1rem!important;
    padding-bottom: 1rem!important;
}
.px-4 {
    padding-right: 1.5rem!important;
    padding-left: 1.5rem!important;
}
.flex-grow-0 {
    flex-grow: 0!important;
}
.border-top {
    border-top: 1px solid #dee2e6!important;
}
            
</style>
</head>
<body>
<main class="content">
    <div class="container p-0">
        
     <h1 class="h3 mb-3">Diary</h1>
     <div class="card">
        <div class="row g-0">
   <div class="col-12 col-lg-5 col-xl-3 border-right">

			

				



					<hr class="d-block d-lg-none mt-1 mb-0">
				</div>
				<div class="col-12 col-lg-7 col-xl-9">
					<div class="py-2 px-4 border-bottom d-none d-lg-block">
						<div class="d-flex align-items-center py-1">
							<div class="position-relative">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" class="rounded-circle mr-1" alt="Sharon Lessman" width="40" height="40">
							</div>
							<div class="flex-grow-1 pl-3">
								<strong>My diary</strong>
								<div class="text-muted small"><em>welcome to my diary</em></div>
							</div>
							<div>
								<button class="btn btn-primary btn-lg mr-1 px-3"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone feather-lg"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg></button>
								<button class="btn btn-info btn-lg mr-1 px-3 d-none d-md-inline-block"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-video feather-lg"><polygon points="23 7 16 12 23 17 23 7"></polygon><rect x="1" y="5" width="15" height="14" rx="2" ry="2"></rect></svg></button>
								<button class="btn btn-light border btn-lg px-3"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal feather-lg"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg></button>
							</div>
						</div>
					</div>

					<div class="position-relative">
						<div class="chat-messages p-4">
                                                    
                                                    
                                                    <%
      
      
      while(aaa.next()){
      date = aaa.getString("date");
      event = aaa.getString("event");
      
      
      
      
      
      
      %>
                                                    
                                                    

							<div class="chat-message-right pb-4">
								<div>
									<img src="C:\Users\vutlh\OneDrive\Documents\Pictures\IMG-20231113-WA0013.jpg" class="rounded-circle mr-1" alt="Chris Wood" width="40" height="40">
                                                                        <div class="text-muted small text-nowrap mt-2"><%=date%></div>
								</div>
								<div class="flex-shrink-1 bg-light rounded py-2 px-3 mr-3">
									<div class="font-weight-bold mb-1">vd</div>
                                                                        <%=event%>
								</div>
							</div>

                                                  <%}%>                      
                                                                      


</div>
</div>

<div class="flex-grow-0 py-3 px-4 border-top">
    <form action="send.jsp" method="post">
<div class="input-group">
   
<input type="text" readonly class="form-control" placeholder="add new diary entry">
<a href="entry.jsp>"<button type submit  class="btn btn-primary">Create</button></a>

</div>
    </form>
</div>

</div>
</div>
</div>
	</div>
</main>
    </body>
</html>
