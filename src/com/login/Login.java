package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String email = request.getParameter("emailid");
		String uname = request.getParameter("username");
		String pass = request.getParameter("password1");
		
		
		
		
		
		try{  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
			      
			PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=? ");  
			ps.setString(1,uname);  
			ps.setString(2,pass);  
		    
			ResultSet rs=ps.executeQuery();  
			if(rs.next()) { 
				        
						HttpSession session = request.getSession();
						session.setAttribute("user", uname);					
						
						String user_i = rs.getString("user_id");
						session.setAttribute("user_id",user_i );
						
						 RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome.jsp");
			                rd.forward(request, response);
						//response.sendRedirect("welcome.jsp");	
						
			       }
			else {
				    response.sendRedirect("login.jsp");		
				    String message = "Wrong User Credentials...";
				    request.setAttribute("message", message);
				    request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			}catch(Exception e){System.out.println(e.getMessage());}
		
		
		
//	Logindao dao = new Logindao();
		
//		if(Logindao.validate(uname,pass)) {
//			
//			HttpSession session = request.getSession();
//			session.setAttribute("user", uname);
//			
//			response.sendRedirect("welcome.jsp");
//			
//		
//		}else {
////			response.sendRedirect("login.jsp");
//				String message = "Wrong User Credentials...";
//			    request.setAttribute("message", message);
//			    request.getRequestDispatcher("/login.jsp").forward(request, response);
//		}
		
	}



}
