<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.net.DAO.ParticipantDAO" %> 
<%@page import="com.net.eventDAO.EventDAO"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>participant reg page</title>
</head> 
<body>

<jsp:useBean id="obj" class="com.net.bean.ParticipantBean">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<% 
out.print("Participant Reg page");
java.sql.ResultSet rs = EventDAO.ShowEventId(obj.getEventname());

rs.next();
  obj.setEventid(Integer.parseInt(rs.getString(1)));
 

out.print("<hr> Participant Reg page - " + obj.getEventid());
out.print("<hr> Participant Reg page - " + obj.getEventname());
out.print("<hr> Participant Reg page - " + obj.getName());
out.print("<hr> Participant Reg page - " + obj.getCollegename());
out.print("<hr> Participant Reg page - " + obj.getBranch());
out.print("<hr> Participant Reg page - " + obj.getEmail());
out.print("<hr> Participant Reg page - " + obj.getMobile());
out.print("<hr> Participant Reg page - " + obj.getCity());
out.print("<hr> Participant Reg page - " + obj.getDob());
out.print("<hr> Participant Reg page - " + obj.getGender());


int regStatus = ParticipantDAO.Register(obj);
out.print("<br> ");
if(regStatus > 0)
{	
//	out.print("Participant Registration Success.. " +  regStatus);
out.print("<script> alert('Participant Registration Success...'); window.open('ViewParticipant.jsp','_self'); </script>");
}
else
{
//	out.print("Participant Registration Failed.. " + regStatus);
	out.print("<script> alert('Participant Registration Failed...'); window.open('AddParticipant.jsp','_self'); </script>");
}

%>
</body>
</html>