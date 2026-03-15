<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.net.DAO.UserDAO"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User Record</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  
  <%@ include file="adminheader.jsp" %>
  
  <div class="container w-100">
    <h1 class="text-center bg-info m-2"> View User Record</h1>
    
    <div class="mt-4 mb-5">
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Uid</th>
      <th scope="col">User Name</th>
      <th scope="col">Password</th>
      <th scope="col">User Name</th>
      <th scope="col">Email Id</th>
      <th scope="col">DOB</th>
      <th scope="col">City</th>
      <th scope="col">Operations</th>
      
    </tr>
  </thead>
  <tbody>
    
   <%
      java.sql.ResultSet rs = UserDAO.Show();
   
        while(rs.next()){
        	int uid         = rs.getInt(1);
        	String username = rs.getString(2);
        	String password = rs.getString(3);
        	String name     = rs.getString(4);
        	String email    = rs.getString(5);
        	String dob      = rs.getString(6);
        	String city     = rs.getString(7);

 out.print("<tr>"+
    	     	"<th scope='row'>" + uid +"</th>"+
				"<td>" + username +"</td>"+
				"<td>" + password +"</td>"+
				"<td>" + name +"</td>"+
				"<td>" + email +"</td>"+
				"<td>" + dob +"</td>"+
				"<td>" + city +"</td>"+
				
				"<td> <button class='btn btn-primary'> <a class='fw-bold text-light' href='UpdateUser.jsp?uid="+uid+"'>Update</a> </button>"+
				
				" <button class='btn btn-danger'> <a class='fw-bold text-light' href='DeleteUser.jsp?uid="+uid+"'>Delete</a> </button>"+
				
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