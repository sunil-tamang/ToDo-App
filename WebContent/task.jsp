<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task | Page </title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>

<%
	
	response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");  //Http 1.1
	
	response.setHeader("Pragma", "no-cache"); //Http 1.0
	
	response.setHeader("Expires", "0"); //Proxy
	

   if(session.getAttribute("user") == null )
  	{
		response.sendRedirect("login.jsp");
	}

 
%>

<div class="container" style="padding-top:2em; width:800px;">

 <form action="Task" method="post">
 
 			<p class="h2">Add Task</p><br>
 	 <div class="form-group row">
			   	 <div class="col">
			      <input type="text" name="taskname" class="form-control"  placeholder="Task-Name" required>
			    </div>	
  		</div>
  		
  		 <div class="form-group">
		    
		    <textarea  name ="description" class="form-control" id="exampleFormControlTextarea1" rows="6" placeholder="Description"></textarea>
  		</div>
  		
  		
  		<div class="form-group row">
			  <label for="example-time-input" class="col-2 col-form-label">End-Time</label>
			  <div class="col-10">
			    		<input name="time" class="form-control" type="time" value="13:45:00" id="example-time-input">
			  </div>
		</div>
		
  		 <div class="form-group row">
  		  <label for="example-time-input" class="col-2 col-form-label">End-Date</label>
			   	 <div class="col-10">
			      <input type="date" name="date" class="form-control"  placeholder="End-Time" value="2018-07-22" min="2018-01-01" max="2050-12-31" required>
			    </div>	
  		</div>
  		   <div style="width:100%; text-align:center; padding-top:.1em;">
    	 			<p  class=""> ${message}</p>
    		 <button type="submit" class="botton btn-wrapperr"  >  Add </button>
    	 
    	 
    	 
    </div>
 
 </form>

</div>

</body>
</html>