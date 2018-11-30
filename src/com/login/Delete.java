package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			   
			String obj = (String) request.getAttribute("objo");
			
		  	Class.forName("oracle.jdbc.driver.OracleDriver");
		 
		    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 

		    String query = "delete from task where task_name ='"+obj+"' ";
		    System.out.println(query);
            PreparedStatement ps = con.prepareStatement(query); 
     		//ps.setString(1, obj);
     		
     		ps.executeUpdate();
            	
			//int rs = ps.executeUpdate(); 
		
					    String message = "Task Deleted";
					    request.setAttribute("message", message);
					    request.getRequestDispatcher("welcome.jsp").forward(request, response);
				  
				
				    ps.close();
				    con.close();
		 
		} catch (Exception e) {
		  
		    e.getMessage();
		   
		   }
	}

}
