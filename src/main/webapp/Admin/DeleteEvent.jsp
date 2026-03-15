<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.eventDAO.EventDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete Event page</title>
</head>
<body>

<% 

out.print("Event delete page");

 int eid=Integer.parseInt(request.getParameter("eid"));

int delStatus = EventDAO.DeleteEvent(eid);
out.print("<br> ");
if(delStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('Event Delete Success...'); window.open('ViewEvent.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('Event Delete Failed...'); window.open('ViewEvent.jsp','_self'); </script>");
}

%>
</body>
</html>