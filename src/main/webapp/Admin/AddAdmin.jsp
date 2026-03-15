<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" ></script>
</head>
<body>

<div class="container">
 <%@ include file="adminheader.jsp" %>
<h1 class="text-center bg-primary pt-2 pb-4 mt-2 mb-3"> Add Admin Page</h1>

<div class="container bg-info w-75">

<form method="post" action="adadm.jsp">
  
  <div class="mb-3">
    <label class="form-label fw-bold">Admin User Name</label>
    <input type="text" class="form-control" name="adminusername" placeholder="Enter Admin User Name" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Email Id</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Mobile No</label>
    <input type="number" class="form-control" name="mobile" placeholder="Enter Mobile No">
  </div>
  
    <div class="mb-3">
    <label class="form-label fw-bold">Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4">Add Admin</button>
  </div>
  
</form>

</div>

  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>