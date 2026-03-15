<%@page import="com.net.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>


<div class="container">

 <jsp:include page="adminheader.jsp"></jsp:include>  

<%   

    String un = session.getAttribute("adminname").toString();

    java.sql.ResultSet rs = AdminDAO.ShowRecord(un);

    rs.next();
    
    String username = rs.getString(1);
	
%>

 
<h1 class="text-center bg-primary mt-2 mb-3"> Change Password</h1>

<div class="container bg-danger w-75">

<form method="post" action="chgps.jsp">
  
  <div class="mb-3">
    <label class="form-label fw-bold">Admin User Name</label>
    <input type="text" class="form-control" name="adminusername" placeholder="Enter Admin User Name" value='<%=username %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Old Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">New Password</label>
    <input type="password" class="form-control" name="newpass" placeholder="Enter Password Here" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Confirm New Password</label>
    <input type="password" class="form-control" name="cnewpass" placeholder="Enter Password Here" required>
  </div>
  
<div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4">Update Password</button>
  </div>
  
</form>

</div>
  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>