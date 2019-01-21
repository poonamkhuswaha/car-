
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
<%! String userdbName;

String userdbPsw;


%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "org.apache.derby.jdbc.ClientDriver";

String url = "jdbc:derby://localhost:1527/autowings";

String user = "autowings";

String dbpsw = "autowings";



String sql = "select * from registerdata where contact=? and password=?";



String name = request.getParameter("contact");

String password = request.getParameter("password");




if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, name);

ps.setString(2, password);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("contact");

userdbPsw = rs.getString("password");


if(name.equals(userdbName) && password.equals(userdbPsw))

{

session.setAttribute("contact",userdbName);


response.sendRedirect("index.jsp"); 

} 

}


else

response.sendRedirect("error.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>



<% 

getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);

}

%>
    </body>
</html>

</html>
