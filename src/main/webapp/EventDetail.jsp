<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.net.eventDAO.EventDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABESIT EVENT DETAILS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  <jsp:include page="header.jsp"></jsp:include>
  
  
  <div>
    
    <%
      int eid = Integer.parseInt(request.getParameter("eid"));
      java.sql.ResultSet rs = EventDAO.ShowEvent(eid);
   
        rs.next();
        	int eventid         = rs.getInt(1);
        	String eventname    = rs.getString(2);
        	String eventdesc    = rs.getString(3);
        	String eventplace   = rs.getString(4);
        	String eventdate    = rs.getString(5);
        	String eventimage   = rs.getString(6);
        	String eventorg     = rs.getString(7);
        	
    %>
    
   <div class="container mt-2 bg-warning pb-5">
     <h1 class="text-center mt-2"><%= eventname %></h1>
     <div class="">
       <img src='eventimage/<%= eventimage%>' class="w-100" style='height:800px'>
       <div class="d-flex justify-content-between text-center m-4 fw-bold">
       <%= eventdesc %>
       <br>
       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
     <br>  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
       <br>
       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
       </div>
       
    <div class="container bg-danger w-50 fw-bold mb-5">
    <table class="w-100 text-center table table-striped-columns">
      <tr> <td>Event Name: </td> <td> <%=eventname %></td> </tr>
      <tr> <td>Event Place: </td> <td> <%=eventplace %></td> </tr>
      <tr> <td>Event Date: </td> <td> <%=eventdate %></td> </tr>
      <tr> <td>Event Organizer Name: </td> <td> <%=eventorg %></td> </tr>
      <tr> <td>Event Name: </td> <td> <%=eventname %></td> </tr>
    </table>
    </div>   
       
     </div>
   </div>        
     
  </div>
    <jsp:include page="footer.jsp"></jsp:include>
  
</div>
</body>
</html>