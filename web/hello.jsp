<%-- 
    Document   : hello
    Created on : Jan 7, 2017, 10:45:26 PM
    Author     : Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myBe" scope="session" class="org.vicky.LoginDB" />
        <jsp:setProperty name="myBe" property="contact" />
        <jsp:setProperty name="myBe" property="pass" value="" />
        
        <h2><jsp:getProperty name="myBe" property="contact" /></h2>
        <h2><jsp:getProperty name="myBe" property="pass" /></h2>
        
        <script>
            var a=myBe.store();
             if(rs.next())
                    System.out.println("Success");
                else
                    System.out.println("Failed");

                }catch(Exception e){
                    System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }
            
        </script>
       
    </body>
</html>
