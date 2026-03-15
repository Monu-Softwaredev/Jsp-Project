<%@page import="com.net.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>



<div class="container">

  <jsp:include page="adminheader.jsp"></jsp:include>

<%
    int uid =Integer.parseInt(request.getParameter("uid"));

    java.sql.ResultSet rs = UserDAO.ShowRecord(uid);

    rs.next();
    
    String username = rs.getString(2);
	String password = rs.getString(3);
	String name     = rs.getString(4);
	String email    = rs.getString(5);
	String dob      = rs.getString(6);
	String city     = rs.getString(7);
%>
 
<h1 class="text-center bg-primary mt-2 mb-3"> Update User Record</h1>

<div class="container bg-danger w-75">

<form method="post" action="updtuser.jsp">
<input type="hidden" class="form-control" name="uid" value=<%=uid %>>
  
  <div class="mb-3">
    <label class="form-label fw-bold">User Name</label>
    <input type="text" class="form-control" name="username" placeholder="Enter User Name" value='<%= username %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" value='<%= password %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name"  value='<%= name %>'>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Email Id</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email"  value='<%= email %>'>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">DOB</label>
    <input type="date" class="form-control" name="dob" placeholder="Enter DOB" value='<%= dob %>'>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">City</label>
    <input type="text" class="form-control" name="city" placeholder="Enter City"  value='<%= city %>'>
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-warning mb-2 fw-bold w-100 fs-4"> Update Record</button>
  </div>

</form>

</div>


  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>