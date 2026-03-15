<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.adminDAO.AdminDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin log page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.AdminBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 


int logStatus =  AdminDAO.AdLogin(obj);
out.print("<br> ");
if(logStatus > 0){
//	out.print("Login Success.. " +  logStatus);
   
session.setAttribute("adminname", obj.getAdminusername());
   
	out.print("<script> alert('Login Success...'); window.open('AdminDash.jsp','_self'); </script>");

}
else{
	//out.print("Login Failed.. " + logStatus);
	out.print("<script> alert('Login Failed...'); window.open('index.jsp','_self'); </script>");
}
%>
</body>
</html>