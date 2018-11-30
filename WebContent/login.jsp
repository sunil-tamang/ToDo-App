<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | Page</title>

	<%@ include file="header.jsp" %>

</head>
<body>
	
	
<div class="container" style="width:600px; padding-top:10em;">
	<form action="Login" method="post">
		<p class="h2">Login | User</p><br>
		
		 <div class="form-group row">
			   	 <div class="col">
			      <input type="text" name="username" class="form-control"  placeholder="Username" required>
			    </div>	
  		</div>
  		
  		 	 <div class="form-group row mb-3">
		    <div class="col">
		      <input type="password" name="password1" class="form-control" id="password" placeholder="Password" required>
		    </div>
	  	</div>

	
	<br>
	
	<button type="submit" class="botton btn-wrapper">Login</button>
	
	  	<br><br>
		
		<p>Not a User Signup <a href="signup.jsp">Here.</a> </p>
		<p  class=""> ${message}</p>
		
		
	</form>
</div>

</body>
</html>