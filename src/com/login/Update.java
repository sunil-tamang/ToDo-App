package com.login;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String mail = request.getParameter("emailid");
		
		
		HttpSession session = request.getSession();
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
            
	         String query = "update users set firstname=?,lastname=?,email=? where username='"+session.getAttribute("user")+"' ";
			
	         PreparedStatement ps = con.prepareStatement(query); 
			    ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, mail);
				
				int rs = ps.executeUpdate(); 
			
				
				if(rs > 0 ){
			   
				 String message = "Data Updated";
			     request.setAttribute("message", message);
			     request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
			  //	response.sendRedirect("edit_profile.jsp");
	    		
				}
				ps.close();
				con.close();	
		}catch(Exception e) {
				e.getMessage();
		}
		
		
	}

}
