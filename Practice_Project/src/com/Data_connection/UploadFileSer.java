package com.Data_connection;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;

/**
 * Servlet implementation class UploadFileSer
 */
@WebServlet("/UploadFileSer")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,
				maxFileSize = 1024 * 1024 * 10,
				maxRequestSize = 1024 * 1024 * 50)

public class UploadFileSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFileSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
        Part part = request.getPart("file");
       
        String description = request.getParameter("description");
        String fileName = extractFileName(part);
        String savePath = "G:/java_pro/Practice_Project/WebContent/web/adminaddImages/"+File.separator+fileName;
       
        File fileSaveDir = new File(savePath);
        part.write(savePath +File.separator);
        // Connection con;
        //PreparedStatement psmt;
        Statement st = null;
        //InputStream inputstream = this.getClass().getResourceAsStream("G:/java_pro/Practice_Project/WebContent/web/adminImages/"+File.separator+fileName);
        //try(AudioInputStream _audio = AudioSystem.getAudioInputStream(inputstream)){
        	try{
        	Class.forName("com.mysql.jdbc.Driver");
        	//out.println("1");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub", "root", "");          
            //out.println("2");
           // PreparedStatement psmt = con.prepareStatement("insert into admin_add_data values(?,?)");
           // psmt.setString(1, savePath);
           // psmt.setString(2, description);
           // psmt.executeUpdate();
            st = con.createStatement();
        	st.executeUpdate("insert into admin_add_data(image,path,description) values('"+fileName+"','"+savePath+"','"+description+"')");
            response.sendRedirect("web/MainIndex.jsp");
        	//out.print("<h2>Successfully inserted Image</h2>");
           //out.print("<center><a href = 'displayImage.jsp?' ></a></center>");
        }
        catch(Exception e){
        	out.println(e);
        }

	}

	private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s:items){
			if(s.trim().startsWith("filename")){
				return s.substring(s.indexOf("=")+2, s.length()-1);
			}
		}
	
		return "";
	}

}
