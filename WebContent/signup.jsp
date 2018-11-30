<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up | page </title>

	<%@ include file="header.jsp" %>
	
</head>
<body>



<div class="container" style="width:600px; padding-top:4em;">
	<form action="Signup" method="post">
	
		<p class="h2">Register | user</p><br>
		
	  <div class="row">
		    <div class="col">
		    	 <input type="text" class="form-control"  name="firstname"  placeholder="First name" required>
	    	</div>
		    <div class="col">
		      		<input type="text" class="form-control" name="lastname"placeholder="Last name" required>
		    </div>
	 </div> 
 <br>
	 <div class="form-group row">
			   	 <div class="col">
			      <input type="email" name="emailid" class="form-control" id="inputEmail3" placeholder="Email" required>
			    </div>	
  		</div>

	   	 <div class="form-group row">
		    <div class="col">
		      <input type="text" name="username" class="form-control" id="username" placeholder="User-Name" required>
		    </div>
	  	</div>
	  	
	  	 <div class="form-group row">
		    <div class="col">
		      <input type="password" name="password1" class="form-control" id="inputPassword3" placeholder="Password" required>
		    </div>
  		</div>
	
	<br>
			<button type="submit" class="botton btn-wrapper">Submit</button>
	  	<br>
		<br> 
	  
		<p>Already Registered <a href="login.jsp">Login</a></p>
		
	</form>
</div>

<!-- 
<div class="container" style="width:600px; padding-top:4em;">

	<form action="Signup" method="post">
		<h2 class="display-4">Register | User </h2>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First-Name</label>
      <input type="textl" class="form-control"  name="firstname" id="inputEmail4" placeholder="First-Name">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last-Name</label>
      <input type="text" class="form-control" name="firstname"  id="inputPassword4" placeholder="Last-Name">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
    <input type="email" class="form-control" name="emailid" id="inputAddress" placeholder="Email">
  </div>
   <div class="form-group">
    <label for="inputAddress">User-name</label>
    <input type="text" class="form-control" id="inputAddress" name="username"  placeholder="UserName">
  </div>
   <div class="form-group">
    <label for="inputAddress">Password</label>
    <input type="password" class="form-control" name="password1" id="inputAddress" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
 
  <button type="submit" class="btn btn-primary">Sign in</button>
  
   -->
  

</body>
</html>    