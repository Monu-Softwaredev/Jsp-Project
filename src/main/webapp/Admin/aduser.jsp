<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.DAO.UserDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add user page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.UserBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("add user page");
out.print("<hr>User Name - " + request.getParameter("username"));
out.print("<hr>Password - " + request.getParameter("password"));

int regStatus = UserDAO.Register(obj);
out.print("<br> ");
if(regStatus > 0)
{	
//	out.print("Registration Success.. " +  regStatus);
out.print("<script> alert('Add User Success...'); window.open('ViewUser.jsp','_self'); </script>");
}
else
{
//	out.print("Registration Failed.. " + regStatus);
	out.print("<script> alert('Add User Failed...'); window.open('AddUser.jsp','_self'); </script>");
}


%>
</body>
</html>