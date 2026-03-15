<link href="../CSS/style2.css" rel="stylesheet" type="text/css">
<%
   if(session.getAttribute("adminname") == null){
	   response.sendRedirect("index.jsp");
   }
%>
  <nav class="navbar navbar-expand-lg bg-warning mynav">
  <div class="container-fluid">
    <a class="navbar-brand" href="../index.jsp">ABESITEVENDASH</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AdminDash.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Manage Admin
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddAdmin.jsp">Add Admin</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="ViewAdmin.jsp">View Admin Record</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Other</a></li>
          </ul>
        </li>
  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Manage User
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddUser.jsp">Add User</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="ViewUser.jsp">View User Record</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Other</a></li>
          </ul>
        </li>
  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Manage Events
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddEvent.jsp">Add Event</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="ViewEvent.jsp">View Events Record</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Other</a></li>
          </ul>
        </li>

  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Profile
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item nav-link fw-bold text-primary">Welcome <%= session.getAttribute("adminname") %></a>
 </li>
            
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item nav-link fw-bold text-primary" href="ChangePass.jsp">Change Password</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item nav-link fw-bold text-primary" href="#">Other</a></li>
          </ul>
        </li>
       
         <li class="nav-item">
          <a class="nav-link" href="Logout.jsp">Logout</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
  