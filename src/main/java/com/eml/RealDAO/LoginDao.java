package com.eml.RealDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.eml.UserFom.LoginForm;
import com.eml.database.Database;

public class LoginDao  {
	 public static boolean loginUser(LoginForm login) throws SQLException{
		 Connection conn = Database.getConnection();
		 if(conn != null) {
			 try {
				 PreparedStatement ps = conn.prepareStatement("select username, password from persons where username = ? AND password = ?");
				 System.out.println("username ="+login.getUsername() );
				 System.out.println("password ="+login.getPassword());
				 ps.setString(1, login.getUsername());
				 ps.setString(2, login.getPassword());
				 ResultSet i = ps.executeQuery();
				 while (i.next()) {
		                String name = i.getString("username");
		                String email = i.getString("password");
		                System.out.println(i + "," + name + "," + email );
		                if(name != null && email != null) {
							 return true;
						 }
						 else {
							 return false;
						 }
		            }
				 
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			
		 }
		 
		return false;
		 
	 }
	

}
