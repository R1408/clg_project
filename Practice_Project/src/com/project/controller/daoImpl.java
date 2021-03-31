package com.project.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.rmi.CORBA.UtilDelegate;
/*
import com.project.UserModel.UserModel;
import com.project.dao.dao;
import com.project.utilImpl.utilImpl;
*/
public class daoImpl implements dao{

	public boolean flag=false;
	public Connection con=null;
	Statement st=null;
	util u=new utilImpl();
	
    public  boolean insert(UserModel m)
	{
    
    	try
    	{
    		con=u.getConnection();
    		 		
    					if(con!=null)
    					{
    						st=con.createStatement();
    					int u=st.executeUpdate("insert into temp(fname,number) values(' "+m.getFname()+" ',' "+m.getNumber()+" ')");
    			//	int u=st.executeUpdate("insert into"+"temp(fname,number)"+"values(' "+m.getFname()+" ',' "+m.getNumber()+" ')");		
    								if(u>0)
    								{
    									flag=true;
    								}
    								
    								else
    								{
    									flag=false;
    								}
    					}
    					
    					
    					else
    					{
    						System.out.println("connection kharabiii");
    					}
    	}
    	
    	catch(SQLException e)
    	{
    		System.out.println("exception is "+e);
    	}
		return flag;
		
	}
	
	

}
