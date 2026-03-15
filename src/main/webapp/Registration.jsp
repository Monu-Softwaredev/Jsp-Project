<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<jsp:include page="header.jsp"></jsp:include>
<h1 class="text-center bg-primary pt-2 pb-4"> Registration Page</h1>

<div class="container bg-info w-75 mypg mb-0">

<form method="post" action="reg.jsp">
  
  <div class="mb-3">
    <label class="form-label fw-bold">User Name</label>
    <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" required>
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">Email Id</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">DOB</label>
    <input type="date" class="form-control" name="dob" placeholder="Enter DOB">
  </div>
  
  <div class="mb-3">
    <label class="form-label fw-bold">City</label>
    <input type="text" class="form-control" name="city" placeholder="Enter City">
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4"> Registration</button>
  </div>
  <div class="fw-bold text-center mb-1">
   Already Registered? <a href="Login.jsp"> Click here</a> for Login.
  </div>
</form>

</div>


  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>