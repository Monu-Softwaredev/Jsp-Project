<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.net.eventDAO.EventDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABESIT EVENT DASHBOARD</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  <jsp:include page="header.jsp"></jsp:include>
  
  <div>
  
  <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="pics/1.jpeg" class="d-block w-100" style="height:450px;" alt="...">
    </div>
    <div class="carousel-item">
      <img src="pics/2.jpeg" class="d-block w-100" alt="..." style="height:450px;">
    </div>
    <div class="carousel-item">
      <img src="pics/3.jpeg" class="d-block w-100" alt="..."style="height:450px;">
    </div>
    
    <div class="carousel-item">
      <img src="pics/4.jpeg" class="d-block w-100" alt="..."style="height:450px;">
    </div>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  
  </div>
  
  <div class="mt-3 mb-5">
    <div class="row">
    
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
    
out.print("<div class='col-4'>"
        +   "<div class='card' style='width: 22rem;'>"
    	 +     "<img src='eventimage/"+eventimage+"' class='card-img-top' alt='...' style='height:200px;'>"
    	  +    "<div class='card-body'>"
    	   +    "<h5 class='card-title'>"+ eventname +"</h5>"
    			   +   "<p class='card-text'> "+ eventdesc.substring(0, 120) +"... </p>"
    					   +   "<p class='card-text fw-bold'> Date: "+ eventdate +" </p>"
    +  "<a href='EventDetail.jsp?eid="+eventid+"' class='btn btn-primary'>Read More</a>"
    	      +"</div>"
    	 + " </div>"
      + "</div>"); 
        }
        	
    %>
    
      
      
      
      
    </div>
  </div>
  
  <jsp:include page="footer.jsp"></jsp:include>
  
</div>
</body>
</html>