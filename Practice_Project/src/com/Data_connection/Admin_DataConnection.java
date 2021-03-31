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

/**
 * Servlet implementation class Admin_DataConnection
 */
@WebServlet("/Admin_DataConnection")
public class Admin_DataConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_DataConnection() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		Connection con = null;
		Statement st = null;
		PrintWriter out = response.getWriter();

		String fname= request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		
		
		
		try
		{

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
		//out.println("established");
		  response.sendRedirect("web/MainIndex.jsp");

		if(con!=null)
		{
			st = con.createStatement();
			st.executeUpdate("insert into register_data(fname,lname,email,password,confirmpassword) values('"+fname+"','"+lname+"','"+email+"','"+password+"','"+confirmpassword+"')");
		}
		else
		{
			System.out.println("Connection Problem in else");
		}


		//insert into data("");
		}
		catch(ClassNotFoundException e)
		{
			
			out.println("Connection problem in catch 1");
		}
		catch(Exception e)
		{
			out.println("Connection problem in catch 2");
		}

	
	}

}
