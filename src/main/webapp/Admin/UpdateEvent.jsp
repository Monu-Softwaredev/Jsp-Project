<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.net.eventDAO.EventDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Event Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
 <jsp:include page="adminheader.jsp"></jsp:include>

<%
    int eid = Integer.parseInt(request.getParameter("eid"));

    java.sql.ResultSet rs = EventDAO.ShowEvent(eid);

    rs.next();
    
    String eventname  = rs.getString(2);
	String eventdesc  = rs.getString(3);
	String eventplace = rs.getString(4);
	String eventdate  = rs.getString(5);
	String eventimage = rs.getString(6);
	String eventorg   = rs.getString(7);

	/*out.print("<br>"+eid);
	out.print("<br>"+eventname);
	out.print("<br>"+eventplace);
	out.print("<br>"+eventdate);
	out.print("<br>"+eventimage);
	out.print("<br>"+eventorg);
	*/
%>

<h1 class="text-center bg-success pt-2 pb-2 mt-2 mb-3 w-50 m-auto text-light"> Update Event Page</h1>

<div class="container bg-warning w-75">

<form method="post" action="updtev.jsp">
  
<input type="hidden" class="form-control" name="eventid" value=<%=eid %>>

  <div class="mb-3">
    <label class="form-label fw-bold">Event Name</label>
    <input type="text" class="form-control" name="eventname" placeholder="Enter Event Name" value='<%= eventname %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Event Description</label>
    <textarea class="form-control" name="eventdesc" placeholder="Enter Desc Here"><%= eventdesc %></textarea>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Event Place</label>
    <input type="text" class="form-control" name="eventplace" placeholder="Enter Event Place" value='<%= eventplace %>'>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Event Date</label>
    <input type="date" class="form-control" name="eventdate" placeholder="Enter Event Date" value='<%= eventdate %>'>
  </div>
  
    <div class="mb-3">
    <label class="form-label fw-bold">Event Image</label>
    <input type="file" class="form-control" name="eventimage" placeholder="Choose Event Image" value="<%= eventimage %>">
  </div>
  
    <div class="mb-3">
    <label class="form-label fw-bold">Event Organizer Name</label>
    <input type="text" class="form-control" name="eventorg" placeholder="Enter Event Organizer Name" value='<%= eventorg %>'>
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4">Update Event</button>
  </div>
  
</form>

</div>

  <jsp:include page="footer.jsp"></jsp:include>


</div>
</body>
</html>