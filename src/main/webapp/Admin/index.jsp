<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<h1 class="text-center bg-success p-1">ABESIT EVEN DASHBOARD</h1>
<h1 class="text-center bg-primary pt-2 pb-2">Admin Login</h1>
<img alt="admin1 pic" src="pics/admin1.jpg" width="100%" height="150px">

<div class="row">
  <div class="col-4">
    <img alt="admin2 pic" src="pics/admin2.png" class="w-100">
  </div>
  <div class="col-8">
    <div class="container bg-info w-100 mt-2 pt-3 pb-3">

<form method="post" action="adlog.jsp">
  
  <div class="mb-3  pt-3 pb-3">
    <label class="form-label fw-bold pt-2 pb-2">Admin User Name</label>
    <input type="text" class="form-control" name="adminusername" placeholder="Enter Admin User Name" required>
  </div>
  
  <div class="mb-3 pt-3 pb-3">
    <label class="form-label fw-bold pt-2 pb-2">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password Here" required>
  </div>
    
  <div class="text-center pt-3 pb-3">
  <button type="submit" class="btn btn-primary mb-2 fw-bold w-100 fs-4"> Admin Log In</button>
  
  </div>
</form>

  </div>

 </div>
</div>

  <jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>