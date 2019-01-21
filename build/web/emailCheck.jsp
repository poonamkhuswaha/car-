<%-- 
    Document   : emailCheck
    Created on : Jan 29, 2017, 7:36:08 PM
    Author     : Sonu
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Checking Page</title>
    </head>
    <body>
<%
String loge = request.getParameter("mail");
String logp = request.getParameter("contact");
String driverName = "org.apache.derby.jdbc.ClientDriver";
String connectionUrl = "jdbc:derby://localhost:1527/";
String dbName = "sample";
String userId = "app";
String password = "app";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try { 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM registerdata";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	               String dbUsername = resultSet.getString("mail");
	               String dbPassword = resultSet.getString("contact");
                        if((dbUsername.equals(loge)) && (dbPassword.equals(logp))){
                            response.sendRedirect("loginform.jsp");
                             response.getWriter().append("<script>alert('Login Successfully');"
	       					+ " location.replace('loginform.jsp') </script>");
                             System.out.println("Email matched\n user already registered");
                        }
                        
	                 else{
	                	 System.out.println("Email not matched\n now you can registered");
	                   System.out.println("<script type=\"text/javascript\">");
	                   System.out.println("alert('invalid login user');");
	                   System.out.println("</script>");	
                           response.getWriter().append("<script>alert('Invalid Email and Password');"
	       					+ " location.replace('loginform.jsp') </script>");
	                }
			 }


} catch (Exception e) {
e.printStackTrace();
}
%>
    </body>
</html>
