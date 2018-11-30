
<nav class="navbar navbar-expand-xl navbar-dark bg-dark ">
  <a class="navbar-brand" href="welcome.jsp">TaskGo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item">
       <!--   <a class="nav-link" href="#">About</a>
         
      </li>
      <li class="nav-item dropdown ">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Products
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
  -->
    </ul>
    <form class="form-inline my-2 my-lg-0" action="Logout" method="post">
    
    	 <a class="nav-link " href="edit_profile.jsp"><h5  style="letter-spacing:.1em;">${user}</h5></a> &nbsp;
      <button class="btn btn-success"  style="letter-spacing:.2em; padding: .5em 2em;"type="submit"><h6>Logout</h6></button>
      
    </form>
  </div>
</nav>