<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.eventDAO.EventDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Add page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.EventBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
int addStatus =  EventDAO.AddEvent(obj);
out.print("<br> ");

if(addStatus > 0){
//	out.print("Login Success.. " +  logStatus);
   
out.print("<script> alert('Add Event Success...');        window.open('ViewEvent.jsp','_self'); </script>");

}
else{
	//out.print("Login Failed.. " + logStatus);
	out.print("<script> alert('Add Event Failed...'); window.open('AddEvent.jsp','_self'); </script>");
}
%>
</body>
</html>