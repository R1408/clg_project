package com.project.controller;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public  class  utilImpl implements util{

public Connection con=null;


	public Connection getConnection(){
		
	try
	{
		//Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3307/college","root"," ");
		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/college","root","");
   }
	catch(ClassNotFoundException e)
	{
		System.out.println(" class not found Exception is "+e);
	}
	catch(SQLException e)
	{
		System.out.println("SQl Exception is "+e);
	}
		return con;
	}

	
}
