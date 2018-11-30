package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Task
 */
@WebServlet("/Task")
public class Task extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Tname = request.getParameter("taskname");
		String Descript = request.getParameter("description");
		String Time = request.getParameter("time");
		String Date = request.getParameter("date");
		PrintWriter out = response.getWriter();
	
		try {
			   
		  	Class.forName("oracle.jdbc.driver.OracleDriver");
		 
		    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 

		    String query ="insert into task (task_name,task_description,task_time,task_date) values(?,?,?,?)";
		    
		    System.out.println(query);
		    
		    PreparedStatement ps = con.prepareStatement(query); 
		    ps.setString(1, Tname);
			ps.setString(2, Descript);
			ps.setString(3, Time);
			ps.setString(4, Date);
				   
		    ps.executeUpdate(); 
		   
		    String message = "Task Added";
		    request.setAttribute("message", message);
		    request.getRequestDispatcher("/task.jsp").forward(request, response);
//	    		response.sendRedirect("login.jsp");
		  
		    		
		    ps.close();
		    con.close();
		   } catch (ClassNotFoundException | SQLException e) {
		   
		    e.printStackTrace();
		   }
		             
			out.close(); 
			
			}  
			 
	}
