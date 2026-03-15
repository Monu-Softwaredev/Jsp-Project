<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.eventDAO.EventDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update event page</title>
</head>
<body>

<jsp:useBean id="obj" class="com.net.bean.EventBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("event update page");


int updtStatus = EventDAO.UpdateEvent(obj);
out.print("<br> ");
if(updtStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('Event Update Success...'); window.open('ViewEvent.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('Event Update Failed...'); window.open('ViewEvent.jsp','_self'); </script>");
}


%>
</body>
</html>