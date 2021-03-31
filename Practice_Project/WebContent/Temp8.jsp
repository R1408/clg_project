<%@page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@page import = "java.io.*,java.sql.*,java.util.zip.*" %>
<%
String saveFile = "";
String contentType = request.getContentType();
if((contentType != null) && (contentType.indexOf("multipart/form-data")>=0)){
DataInputStream in = new DataInputStream(request.getInputStream());	
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
	byteRead = in.read(dataBytes,totalBytesRead,formDataLength);
	totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"")+10);
saveFile = saveFile.substring(0,saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+1, saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex+1, contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n" ,pos)+1;
pos = file.indexOf("\n" ,pos)+1;
pos = file.indexOf("\n" ,pos)+1;
int boundaryLocation = file.indexOf(boundary,pos)-4;
int startPos = ((file.substring(0,pos)).getBytes()).length;
int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;
File ff = new File("G:/java_pro/Practice_Project/WebContent/web/adminImages/"+saveFile);
FileOutputStream fileout = new FileOutputStream(ff);
fileout.write(dataBytes,startPos,(endPos - startPos));
fileout.flush();
fileout.close();
%><br><table border = "2"><tr><td><b>Successfully upload</b>
<%out.println(saveFile); %></td></tr></table>
<%
PreparedStatement psmt = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub", "root", "");
	psmt = con.prepareStatement("insert into admin_add_data(image) values(?)");
	psmt.setString(1, ff.getPath());
	int s = psmt.executeUpdate();
	if(s>0){
		out.println("<h1>Upload image successfully </h1>");
	}else{
		out.println("Error !");
	}	
}
catch(Exception e){
	out.println(e);
}


}
%>