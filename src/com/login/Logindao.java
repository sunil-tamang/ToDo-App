package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Logindao {

	
	public static boolean validate(String uname,String pass){  
		boolean status=false;  
		try{  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
		      
		PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=? ");  
		ps.setString(1,uname);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		          		}catch(Exception e){System.out.println(e.getMessage());}  
		return status;  
	}  

	
}










//public static boolean validate(String username, String password) {
//boolean status=false;  
//String sql ="select * from USERS";
//String url ="jdbc:oracle:thin:@localhost:1521:xe";
//String user="system";
//String passs ="oracle";
//
//try {
//
//	Class.forName("oracle.jdbc.driver.OracleDriver");  
//	
//	Connection con = DriverManager.getConnection(url, user, passs);
//	
//	PreparedStatement st = con.prepareStatement(sql);
//	
//	st.setString(1, username);
//	st.setString(2, password);
//	ResultSet rs = st.executeQuery();
//	if(rs.next()) {
//		return true;
//	}
//	
//}catch(Exception e){e.printStackTrace(); }
//
//return status;
//}
//
