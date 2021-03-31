package com.Data_connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import java.sql.ResultSet;
//@WebServlet("/Data_connection")
//import  java.sql.ResultSet;
import java.sql.ResultSet;
public class Data_connection extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
    public Data_connection() {
        super();
           }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	Connection con = null;
	Statement st = null;
	//ResultSet rs = null;
	//ResultSet rs= null;
    ResultSet rs= null;


	PrintWriter out = response.getWriter();

	String fname= request.getParameter("fname");
	String lname = request.getParameter("lname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String confirmpassword = request.getParameter("confirmpassword");
	
try{

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
		if(con!=null){
				st = con.createStatement();
				rs = st.executeQuery("select count(*) as cnt from register_data where email = '"+email+"'  and password = '"+password+"'");
				if(rs.next())
				{
					if(rs.getInt("cnt") >= 1){
					  response.sendRedirect("alReadyRegisteralert.jsp");
					}
					else {
						st.executeUpdate("insert into register_data(fname,lname,email,password,confirmpassword) values('"+fname+"','"+lname+"','"+email+"','"+password+"','"+confirmpassword+"')");
						response.sendRedirect("NewRegisterData.jsp");						   
					}	
				}
	    }
	 else{
		 out.print("if else ");
		 out.println("Connection Problem in else");
	  }
}
catch(ClassNotFoundException e){		
		out.println("Connection problem in catch 1");
}
catch(Exception e){
		out.println("Connection problem in catch 2");
}	

	}

}
