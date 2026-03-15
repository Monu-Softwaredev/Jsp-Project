<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.DAO.UserDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete user page</title>
</head>
<body>

<% 

out.print("user delete page");

 int uid=Integer.parseInt(request.getParameter("uid"));

int delStatus = UserDAO.DeleteUser(uid);
out.print("<br> ");
if(delStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('User Delete Success...'); window.open('ViewUser.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('User Delete Failed...'); window.open('ViewUser.jsp','_self'); </script>");
}


%>
</body>
</html>