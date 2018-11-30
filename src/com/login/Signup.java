package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



 

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   	String fname = request.getParameter("firstname");
	   	String lname = request.getParameter("lastname");
	   	String email = request.getParameter("emailid");
		String uname = request.getParameter("username");
		String pass1 = request.getParameter("password1");
		PrintWriter out = response.getWriter();
		
 if (fname.isEmpty() || lname.isEmpty() || email.isEmpty() || uname.isEmpty() || pass1.isEmpty() ) {
	   
	 	response.sendRedirect("signup.jsp");  
	  } 
 else { try {
		   
		  	Class.forName("oracle.jdbc.driver.OracleDriver");
		 
		    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 

		    String query = "insert into users (firstname,lastname,email,username,password) values (?,?,?,?,?)";
		    System.out.println(query);
		    PreparedStatement ps = con.prepareStatement(query); 
		    
		    ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, uname);
			ps.setString(5, pass1);
			
			 
		   
		    ps.executeUpdate(); 
		    String message = "You Are Registered You Can Login";
		    request.setAttribute("message", message);
		    request.getRequestDispatcher("/login.jsp").forward(request, response);
//	    		response.sendRedirect("login.jsp");
		  
		    		
		    ps.close();
		    con.close();
		   } catch (ClassNotFoundException | SQLException e) {
		   
		    e.printStackTrace();
		   }
		             
			out.close(); 
			
			}  
			  
      }
		
}



















































































//try{  
//	Class.forName("oracle.jdbc.driver.OracleDriver");  
//	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
//	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?)");  
//	  
//	ps.setString(1,uname);  
//	ps.setString(2,pass);  
//	          
//	int rs=ps.executeUpdate();  
//	
//	if(rs>0){  
//		
//		 response.sendRedirect("welcome.jsp");
//	}else {
//		response.sendRedirect("signup.jsp");
//	}
//	      
//	}catch (Exception e) {System.out.println(e);}  
////