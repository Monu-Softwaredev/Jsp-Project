<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.DAO.ParticipantDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete Participant page</title>
</head>
<body>

<% 

out.print("Participant delete page");

 int pid=Integer.parseInt(request.getParameter("pid"));

int delStatus = ParticipantDAO.DeleteParticipant(pid);
out.print("<br> ");
if(delStatus > 0)
{	
	//out.print("update Success.. " +  updtStatus);
out.print("<script> alert('Participant Delete Success...'); window.open('ViewParticipant.jsp','_self'); </script>");
}
else
{
//	out.print("update Failed.. " + updtStatus);
out.print("<script> alert('Participant Delete Failed...'); window.open('ViewParticipant.jsp','_self'); </script>");
}


%>
</body>
</html>