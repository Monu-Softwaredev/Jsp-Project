<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.adminDAO.AdminDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>change password page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.AdminBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("change password page");
String newPass = request.getParameter("newpass");
String cNewPass = request.getParameter("cnewpass");
String password = request.getParameter("password");

java.sql.ResultSet rs = AdminDAO.selectPass(obj);
rs.next();
String oldPass = rs.getString(1);
rs.close();
if(newPass.equals(cNewPass))
{
 if(oldPass.equals(password)){
  int updtStatus = AdminDAO.ChangePass(obj, newPass);
  out.print("<br> ");
  if(updtStatus > 0)
  {	
	//out.print("update Success.. " +  updtStatus);
   out.print("<script> alert('Password Change Success...'); window.open('AdminDash.jsp','_self'); </script>");
  }
  else
  {
  //	out.print("update Failed.. " + updtStatus);
  out.print("<script> alert('Password Change Failed...'); window.open('ChangePass.jsp','_self'); </script>");
  }
 }
 else
 {
   out.print("<script> alert('Old Password is incorrect...'); window.open('ChangePass.jsp','_self'); </script>");
	 
 }
}
else
{
   out.print("<script> alert('New Password and Confirm New Password not matched...'); window.open('ChangePass.jsp','_self'); </script>");
}


%>
</body>
</html>