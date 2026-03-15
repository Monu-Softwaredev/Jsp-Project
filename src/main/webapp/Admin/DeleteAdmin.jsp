<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.adminDAO.AdminDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete admin page</title>
</head>
<body>

<% 

out.print("admin delete page");

 String un=request.getParameter("un");

int delStatus = AdminDAO.DeleteAdmin(un);
out.print("<br> ");
if(delStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('Admin Delete Success...'); window.open('ViewAdmin.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('Admin Delete Failed...'); window.open('ViewAdmin.jsp','_self'); </script>");
}


%>
</body>
</html>