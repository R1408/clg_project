package com.project.controller;

//import java.io.IOException;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.project.UserModel.UserModel;

/**
 * Servlet implementation class InsertController
 */
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
    
    }

		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
			
try
			
			{
	String fname=request.getParameter("fname");
	long number=Long.parseLong(request.getParameter("number"));
	
	UserModel m=new UserModel(fname,number);
    dao d=new daoImpl();
    
    boolean b=d.insert(m);
    if(b)
    {
    	response.sendRedirect("success.jsp");
    }
    else
    {
    	response.sendRedirect("error.jsp");
    }
}

catch(Exception e)
{	
	System.out.println("exception in catch block");
}
	}

}
