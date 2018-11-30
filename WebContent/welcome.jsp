<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | Page </title>
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
try{
	
	//String usero =(String) session.getAttribute("user_i");
	String usero = (String)request.getSession().getAttribute("user_id"); 
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	String query = "SELECT task.task_name from  task,users where task.task_id ='"+usero+"'  ";
	System.out.println(query);
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	
	

%>

<div class="container" style="padding-top:4em; padding-bottom:2em;">



		<h2 class="display-8 align-middle"style=""><strong>TaskGo</strong> </h2>
		
		<p class="list-unstyled">
 				<h6 style="text-align:justify; line-height:2em;">TaskGo is a simple  ToDo app Designed & Developed by <strong><a href="https://github.com/sunil-tamang">Sunil Tamang </a></strong> and <a href="">Rahul Gupta </a></strong>  .This App is developed in <strong> Java </strong>  using Jsp, Bootstrap, Servlet . 
 				      	This App Allow a Registered User's to create  <strong>TASK's </strong>   . The Front-End is built using <strong>BOOTSTRAP</strong> framework. The Core & BackEnd is Developed using <strong>JAVA</strong>.
 				</h6>
        <p>
    
   
   <h2 class="display-8 align-middle"style=""><strong>How To Use</strong> </h2>
		
		<p class="list-unstyled">
 					<h6 style="text-align:justify; line-height:2em;"> To Use this app New user need to create their account using <strong><a href="signup.jsp">Signup </a></strong> Page . 
 						<br> After creating your account  now you can  <strong><a href="login.jsp">Login </a></strong> .
 						<br> After Login you can create your <strong>Task</strong> By clicking at Add Task Button .
 						<br> Enter <strong> Task Name , Description , Time and Date </strong> and Then Click Add Button .
 						<br> Task is Added ! now You won't forget this Task 
 					</h6>
        <p>
        <br>
        
      

<%	if(rs.next() ){
	
		String taskname = rs.getString("task_name");
		 request.setAttribute("objo",taskname );
	   
	   
	   
	    
	


%>
  <form action="Delete" method="post">
		        <div class="alert alert-primary alert-dismissible fade show" role="alert">
					          <h5><strong><%= taskname%></strong></h5>
					          
							<!--  -->  <button  type="submit" class="close" data-dismiss="alert" aria-label="Close">
							   <span aria-hidden="true">&times;</span>
							  </button>
				</div>
          </form>
        <br>
        

 <%
 
			}   
			
		}catch(Exception e){
				e.getMessage();
		}

 
 %>
<p  class=""> ${message}</p>
        
			<h6 style="font-size:1.5em;"><a class="botton btn-wrapper"  style="padding: .5em 1em; text-decoration:none;"href="task.jsp" > 
    					<i class="fas fa-plus" style="font-size:1em;padding:.4em .4em;"></i> Add Task</a>
    		</h6> 
 
 </div>
 
</body>
</html>