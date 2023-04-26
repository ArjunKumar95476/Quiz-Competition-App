package com.quize.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class InputDaoClass {
	
   
	public static Connection getConnection()
	{
		Connection conn=null;
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			// create connection with connection object
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","arjun");
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
}