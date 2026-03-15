<%@page import="com.net.eventDAO.EventDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body class="">

<div class="container">
   <%@ include file="userheader.jsp" %>

<div>
<div class="container bg-primary p-5 mt-4">
<h2 class="fs-1 text-black mb-4 text" style="background-image:linear-gradient(green, white, blue, white);"> Welcome <%= session.getAttribute("uname") %> <h2>
 <h1 class="text-center p-3	bg-danger text-warning">User DashBoard </h1>
 <div class="bg-info fw-bold">
  <h2 class="bg-warning">User Work goes here: </h2>
  <ul>
   <li> Add Participants for Events</li>
   <li> View Participants Record</li>
   <li> Update Participants Record</li>
   <li> Delete Participants Record</li>   
   <li> Update self Record</li>
   
   </ul>
 </div> 
</div>
  <select name="eventname">
    <%
      java.sql.ResultSet rs = EventDAO.ShowEventName();
   
        while(rs.next()){
        	String eventname    = rs.getString(1);
        	out.print("<option>"+eventname+"</option>");
        }
   %>
  </select>
  <jsp:include page="footer.jsp"></jsp:include>
  
</div>
</div>
</body>
</html>