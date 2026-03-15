<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  
  <jsp:include page="header.jsp"></jsp:include>
  
<h1 class="text-center bg-primary pt-2 pb-4"> Login Page</h1>

<img alt="user1 pic" src="pics/user1.png" class="w-100" height="200px">

<div class="row mt-2">
  <div class="col-4">
    <img alt="user2 pic" src="pics/user2.jpg" class="w-100" height="">
  </div>
  <div class="col-8">

<div class="container bg-info w-100 h-100">

<form method="post" action="log.jsp">
  
  <div class="mb-1">
    <label class="form-label fw-bold mt-3 mb-3">User Name</label>
    <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
  </div>
  
  <div class="mb-5">
    <label class="form-label fw-bold mt-3 mb-3">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" required>
  </div>
    
  <div class="text-center">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4"> Log In</button>
  
  </div>
<div class="fw-bold text-center mb-2">
   Not Registered Yet? <a href="Registration.jsp"> Click here</a> for Register.
  </div>
</form>

</div>
</div>
</div>
  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>