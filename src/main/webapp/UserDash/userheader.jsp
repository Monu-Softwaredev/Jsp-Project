<link href="../CSS/style2.css" rel="stylesheet" type="text/css">

<%
   if(session.getAttribute("uname") == null){
	   response.sendRedirect("../Login.jsp");
   }
%>

<nav class="navbar navbar-expand-lg bg-warning mynav">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">ABESITEVENDASH</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="UserDashBoard.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Manage Participants
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddParticipant.jsp">Add Participants</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="ViewParticipant.jsp">View Participants</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Other</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Upcoming Events</a>
        </li>
       
       
  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Profile Setting
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item nav-link fw-bold text-primary">Welcome <%= session.getAttribute("uname") %></a>
 </li>
            
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item nav-link fw-bold text-primary" href="ChangePass.jsp">Change Password</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item nav-link fw-bold text-primary" href="#">Other</a></li>
          </ul>
        </li>
      
         <li class="nav-item">
          <a class="nav-link" href="../Logout.jsp">Logout</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
