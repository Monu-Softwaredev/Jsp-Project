<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.net.DAO.ParticipantDAO"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Participant Record</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  
  <%@ include file="userheader.jsp" %>
  
  <div class="container w-100">
    <h1 class="text-center bg-info m-2"> View Participant Record</h1>
    
    <div class="mt-4 mb-5">
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Participant Id</th>
      <th scope="col">Event Name</th>
      <th scope="col">Participant Name</th>
      <th scope="col">College Name</th>
      <th scope="col">Branch</th>
      <th scope="col">Email Id</th>
      <th scope="col">Mobile</th>
      <th scope="col">City</th>
      <th scope="col">DOB</th>
      <th scope="col">Gender</th>
      <th scope="col">Operations</th>
    </tr>
  </thead>
  <tbody>
   <%
      java.sql.ResultSet rs = ParticipantDAO.Show();
   
        while(rs.next()){
        	int pid            = rs.getInt(1);
        	String eventname   = rs.getString(3);
        	String name        = rs.getString(4);
        	String collegename = rs.getString(5);
        	String branch      = rs.getString(6);
        	String email       = rs.getString(7);
        	String mobile      = rs.getString(8);
            String city		   = rs.getString(9);
        	String dob     	   = rs.getString(10);
        	String gender      = rs.getString(11);
            
        	switch(gender){
        	case "m": gender = "Male";   break;
        	case "f": gender = "Female"; break;
        	case "o": gender = "Other";  break;
        	}
        	
 out.print("<tr>"+
    	     	"<th scope='row'>" + pid +"</th>"+
				"<td>" + eventname +"</td>"+
				"<td>" + name +"</td>"+
				"<td>" + collegename +"</td>"+
				"<td>" + branch +"</td>"+
				"<td>" + email +"</td>"+
				"<td>" + mobile +"</td>"+
				"<td>" + city +"</td>"+
				"<td>" + dob +"</td>"+
				"<td>" + gender +"</td>"+
				
				"<td> <button class='btn btn-primary'> <a class='fw-bold text-light' href='UpdateParticipant.jsp?pid="+pid+"'>Update</a> </button>"+
				
				" <button class='btn btn-danger'> <a class='fw-bold text-light' href='DeleteParticipant.jsp?pid="+pid+"'>Delete</a> </button>"+
				
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

Welcome <%= session.getAttribute("uname") %>


</body>
</html>