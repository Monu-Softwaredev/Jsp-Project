<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.DAO.UserDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update user page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.UserBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("user update page");
out.print("<hr>User Name - " + request.getParameter("username"));
out.print("<hr>Password - " + request.getParameter("password"));


int updtStatus = UserDAO.UpdateUser(obj);
out.print("<br> ");
if(updtStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('User Update Success...'); window.open('ViewUser.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('User Update Failed...'); window.open('ViewUser.jsp','_self'); </script>");
}


%>
</body>
</html>