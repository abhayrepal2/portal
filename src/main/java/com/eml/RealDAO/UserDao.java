package com.eml.RealDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.eml.UserFom.UserForm;
import com.eml.database.Database;

public class UserDao {

	public boolean save(UserForm userform) {
		 Connection conn = Database.getConnection();
		 System.out.println(conn);
		 try {
			 PreparedStatement pstd = conn.prepareStatement("insert into persons (username, password, hint) values(?,?,?)");
			 pstd.setString(1, userform.getLoginemail());
			 pstd.setString(2, userform.getLoginpassword());
			 pstd.setString(3, userform.getLoginhint());
			 int i = pstd.executeUpdate();
			 if(i==1) {
				 return true;
			 }
			 else {
				 return false;
			 }
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		return false;
	}

	
}
