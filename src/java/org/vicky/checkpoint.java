package org.vicky;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D3LL
 */
public class checkpoint extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkpoint</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("contact");
            
            String password=request.getParameter("pass");
   
                     String user_name = null;
            String user_password = null;
  
                         try {
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/kk","kk","kk");
                String query="select * from registerdata where contact=? and pass=?";
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1, name);
                ps.setString(2, password);
                
               ResultSet rs= ps.executeQuery();
               if(rs.next())
               {
                    user_name=rs.getString(0);
                    user_password=rs.getString(1);
               }
                   
            } catch (SQLException e) {
                System.out.println("connection error");
            }
   
            if(name==""&& password=="")
            {
           response.sendRedirect("index.jsp");
            }
            
                    
            else if(name.equals("kasimsiddiqi123@gmail.com")&& password.equals("password")) {
                    HttpSession session=request.getSession();  
        session.setAttribute("uname",name);  
                 response.sendRedirect("admin.jsp");
            }
            
            else if(name.equals("kasimsiddiqi123@gmail.com")
                    && password.equals("password"))
            {
                     HttpSession session=request.getSession();  
        session.setAttribute("uname",name);  
  
                 response.sendRedirect("admin.jsp");
            }
  
            else if (name.equals(user_name)&& password.equals(user_password)) 
            {
                response.sendRedirect("contact_us.jsp");
            }
            else
            {
                response.sendRedirect("about_us.jsp");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.out.println("connection get method");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
     try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.out.println("connection get method");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
