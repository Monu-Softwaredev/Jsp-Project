<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.net.adminDAO.AdminDAO"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Admin Record</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  
  <%@ include file="adminheader.jsp" %>
  
  <div class="container w-100">
    <h1 class="text-center bg-info m-2"> View Admin Record</h1>
    
    <div class="mt-4 mb-5">
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Admin User Name</th>
      <th scope="col">Password</th>
      <th scope="col">Email Id</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Admin Name</th>
      <th scope="col">Operations</th>
      
    </tr>
  </thead>
  <tbody>
    
   <%
      java.sql.ResultSet rs = AdminDAO.Show();
   
        while(rs.next()){
        	String adminusername = rs.getString(1);
        	String password      = rs.getString(2);
        	String email         = rs.getString(3);
        	String mobile        = rs.getString(4);
        	String name          = rs.getString(5);

 out.print("<tr>"+
    	     	"<th scope='row'>" + adminusername +"</th>"+
				"<td>" + password +"</td>"+
				"<td>" + email +"</td>"+
				"<td>" + mobile +"</td>"+
				"<td>" + name +"</td>"+
				
				"<td> <button class='btn btn-primary'> <a class='fw-bold text-light' href='UpdateAdmin.jsp?un="+adminusername+"'>Update</a> </button>"+
				
				" <button class='btn btn-danger'> <a class='fw-bold text-light' href='DeleteAdmin.jsp?un="+adminusername+"'>Delete</a> </button>"+
				
				"</td>"+
		"</tr>");        	
        	
        
        }
   
   %>

  </tbody>
</table>
    
    </div>
  </div>
  
  <jsp:include page="footer.jsp"></jsp:include>
  
  
</div>

Welcome <%= session.getAttribute("adminname") %>


</body>
</html>