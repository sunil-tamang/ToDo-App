<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit  | Profile</title>
<%@ page import="java.sql.*" %>

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

 <%
try { 
	    
    	Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		String query = "select * from users where username='"+session.getAttribute("user")+"' ";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query);
		if(rs.next() ){
%>




<div class="container" style="padding-top:3em; width:750px;">
		
		<form action="Update" method="post">
		
			<p class="h2">Update | Profile</p><br>
		
	  <div class="row">
		    <div class="col">
		    	 <input type="text" class="form-control"  name="firstname"  value="<%=rs.getString("firstname")%>"    required>  
	    	</div>
		    <div class="col">
		      		<input type="text" class="form-control" name="lastname" value="<%=rs.getString("lastname")%>" required>
		    </div>
	 </div> 
 <br>
	 <div class="form-group row">
			   	 <div class="col">
			      <input type="email" name="emailid" class="form-control" id="inputEmail3" value="<%=rs.getString("email")%>" required>
			    </div>	
  		</div>


	  	
	<p  class=""> ${message}</p>
	<br>
			<button type="submit" class="botton btn-wrapper">Update </button>
			
	  	<br>
		<br> 
		
		</form>
		

</div>


	
<%
	}
}
		catch(Exception e){
			
		}

%>

<!--  -->

</body>
</html>