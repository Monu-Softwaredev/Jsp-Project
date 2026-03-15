<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.adminDAO.AdminDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update admin page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.AdminBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("admin update page");
out.print("<hr>User Name - " + request.getParameter("adminusername"));
out.print("<hr>Password - " + request.getParameter("password"));


int updtStatus = AdminDAO.UpdateAdmin(obj);
out.print("<br> ");
if(updtStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('Admin Update Success...'); window.open('ViewAdmin.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('Admin Update Failed...'); window.open('ViewAdmin.jsp','_self'); </script>");
}


%>
</body>
</html>