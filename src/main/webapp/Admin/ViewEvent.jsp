<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.net.eventDAO.EventDAO"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Event Record</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  
  <%@ include file="adminheader.jsp" %>
  
  <div class="container w-100">
    <h1 class="text-center bg-danger text-light m-2"> View Event Record</h1>
    
    <div class="mt-4 mb-5">
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Event id</th>
      <th scope="col">Event Name</th>
      <th scope="col">Description</th>
      <th scope="col">Place</th>
      <th scope="col">Date</th>
      <th scope="col">Image</th>
      <th scope="col">Organizer Name</th>
      <th scope="col">Operations</th>
      
    </tr>
  </thead>
  <tbody>
    
   <%
      java.sql.ResultSet rs = EventDAO.Show();
   
        while(rs.next()){
        	int eventid         = rs.getInt(1);
        	String eventname    = rs.getString(2);
        	String eventdesc    = rs.getString(3);
        	String eventplace   = rs.getString(4);
        	String eventdate    = rs.getString(5);
        	String eventimage   = rs.getString(6);
        	String eventorg     = rs.getString(7);

 out.print("<tr>"+
    	     	"<th scope='row'>" + eventid +"</th>"+
				"<td>" + eventname +"</td>"+
				"<td>" + eventdesc +"</td>"+
				"<td>" + eventplace +"</td>"+
				"<td>" + eventdate +"</td>"+
				"<td> <img src='../eventimage/" + eventimage +"' width='150px'></td>"+
				"<td>" + eventorg +"</td>"+
				
				"<td> <button class='btn btn-primary'> <a class='fw-bold text-light' href='UpdateEvent.jsp?eid="+eventid+"'>Update</a> </button>"+
				
				" <button class='btn btn-danger'> <a class='fw-bold text-light' href='DeleteEvent.jsp?eid="+eventid+"'>Delete</a> </button>"+
				
				"</td>"+
		"</tr>");        	
        	
        
        }
   
   %>

  </tbody>
</table>
    
    </div>
  </div>
  
    <jsp:include page="footer.jsp"></jsp:include>
  
  
</div>

Welcome <%= session.getAttribute("adminname") %>


</body>
</html>