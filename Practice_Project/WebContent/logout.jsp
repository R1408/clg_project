<%@page import = "java.io.PrintWriter" %>
<%@page import = "javax.servlet.http.HttpServlet"%>
<%@page import = "javax.servlet.http.HttpServletRequest" %>
<%@page import = "javax.servlet.http.HttpServletResponse" %>
<%@page import = "javax.servlet.http.HttpSession" %>

<%

HttpSession sesion = request.getSession();
sesion.invalidate();
//out.close();
response.sendRedirect("Login.jsp");
%>
