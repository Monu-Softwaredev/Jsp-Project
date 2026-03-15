<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.adminDAO.AdminDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Add page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.AdminBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
int addStatus =  AdminDAO.AddAdmin(obj);
out.print("<br> ");
if(addStatus > 0){
//	out.print("Login Success.. " +  logStatus);
   
out.print("<script> alert('Add Admin Success...'); window.open('ViewAdmin.jsp','_self'); </script>");

}
else{
	//out.print("Login Failed.. " + logStatus);
	out.print("<script> alert('Add Admin Failed...'); window.open('ViewAdmin.jsp','_self'); </script>");
}
%>
</body>
</html>