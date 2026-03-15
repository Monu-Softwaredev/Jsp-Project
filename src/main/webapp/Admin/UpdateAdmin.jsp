<%@page import="com.net.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>


<div class="container">

<jsp:include page="adminheader.jsp"></jsp:include>
 
<%
    String un =request.getParameter("un");

    java.sql.ResultSet rs = AdminDAO.ShowRecord(un);

    rs.next();
    
    String username = rs.getString(1);
	String password = rs.getString(2);
	String email     = rs.getString(3);
	String mobile    = rs.getString(4);
	String name      = rs.getString(5);
	
%>
 
<h1 class="text-center bg-primary mt-2 mb-3"> Update Admin Record</h1>

<div class="container bg-danger w-75">

<form method="post" action="updtadm.jsp">
  
  <div class="mb-3">
    <label class="form-label fw-bold">Admin User Name</label>
    <input type="text" class="form-control" name="adminusername" placeholder="Enter Admin User Name" value='<%=username %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" value='<%=password %>' required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Email Id</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email" value='<%=email %>'>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Mobile No</label>
    <input type="number" class="form-control" name="mobile" placeholder="Enter Mobile No" value='<%=mobile %>'>
  </div>
  
    <div class="mb-3">
    <label class="form-label fw-bold">Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name" value='<%=name %>'>
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4">Update Admin</button>
  </div>
  
</form>

</div>

  <jsp:include page="footer.jsp"></jsp:include>


</div>
</body>
</html>