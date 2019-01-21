<%-- 
    Document   : admincdsuccess
    Created on : Jan 10, 2017, 3:18:52 PM
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
        <jsp:useBean id="myAdminBean" scope="session" class="org.vicky.AdminCarDetail" />
        <jsp:setProperty name="myAdminBean" property="cname"/>
        <jsp:setProperty name="myAdminBean" property="csprice"/>
        <jsp:setProperty name="myAdminBean" property="crto"/>
        <jsp:setProperty name="myAdminBean" property="cinsurance"/>
        <jsp:setProperty name="myAdminBean" property="cocharge"/>
        <jsp:setProperty name="myAdminBean" property="cemi"/>
        <jsp:setProperty name="myAdminBean" property="croadp"/>
        <jsp:setProperty name="myAdminBean" property="cryear"/>
        <jsp:setProperty name="myAdminBean" property="cbrand"/>
        <jsp:setProperty name="myAdminBean" property="ccolor"/>
        <jsp:setProperty name="myAdminBean" property="cownership"/>
        
        <script>
            var a=myAdminBean.store();
            if(a === 1){
            alert("Registration Successfully");
        }else {
            alert("Registration Failed");
        }
            
        </script>
        <%        
        int a=myAdminBean.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        %>
        
        <%
            response.sendRedirect("admin.jsp");
            
            %>
    </body>
</html>
