<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.net.eventDAO.EventDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Participant Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<jsp:include page="userheader.jsp"></jsp:include>
<h1 class="text-center bg-primary pt-2 pb-2 mt-2 rounded-5"> Add Participant Page</h1>

<div class="container bg-info w-75 mypg mb-0">

<form method="post" action="partireg.jsp">
    
  <div class="mb-3">
    <label class="form-label fw-bold">Event Name</label>
  <select class="form-select" name="eventname">
    <%
      java.sql.ResultSet rs = EventDAO.ShowEventName();
   
        while(rs.next()){
        	String eventname = rs.getString(1);
        	out.print("<option value='"+eventname+"'>"+eventname+"</option>");
        }
   %>
  </select>
  
  </div>
  
    <div class="mb-3">
    <label class="form-label fw-bold">Participant Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Participant Name" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">College Name</label>
    <input type="text" class="form-control" name="collegename" placeholder="Enter College Name Here" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Branch</label>
    <input type="text" class="form-control" name="branch" placeholder="Enter Branch">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Email Id</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email">
  </div>

  <div class="mb-3">
    <label class="form-label fw-bold">Mobile No</label>
    <input type="number" class="form-control" name="mobile" placeholder="Enter Mobile No Here">
  </div>

  <div class="mb-3">
    <label class="form-label fw-bold">City</label>
    <input type="text" class="form-control" name="city" placeholder="Enter City">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">DOB</label>
    <input type="date" class="form-control" name="dob" placeholder="Enter DOB">
  </div>
  
  <div class="mb-3">
    <div class="row"> 
     <div class="col-2">
    <label class="form-label fw-bold">Gender</label>
    </div> 
     <div class="col">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gender" value="m">
        <label class="form-check-label fw-bold"> Male </label>
      </div>
     </div>
    <div class="col">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gender" value="f">
        <label class="form-check-label fw-bold"> Female </label>
      </div>
     </div>
    <div class="col">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gender" value="o">
        <label class="form-check-label fw-bold"> Other </label>
      </div>
     </div>
    </div>
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4"> Participant Registration</button>
  </div>
  </form>

</div>

  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>