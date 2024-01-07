package com.eml.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
 private static Connection conn=null;
 
 public static Connection getConnection() {
	 if(conn == null) {
		 try {
			 Class.forName(Dbinfo.DriverName);
			 conn = DriverManager.getConnection(Dbinfo.DbURL, Dbinfo.DbUserName, Dbinfo.DbPassword);
			 return conn;
		 }
		 catch(Exception e ) {
			 e.printStackTrace();
		 }
		 return conn;
	 }
	 else {
		 return conn;
	 }
 }
 
}
