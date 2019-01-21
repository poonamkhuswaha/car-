/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vicky;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vikram Singh Negi
 */
public class mailChecking extends HttpServlet {

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
            throws ServletException, IOException, SQLException, SQLException, ClassNotFoundException {
        response.setContentType("text/plain");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            	
            String emailID="";
            String user_emailId=request.getParameter("email");
            System.out.println("user email id :"+ user_emailId);
            String query="select * from registerdata where mail=?";
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
            
         String url="jdbc:derby://localhost:1527/kk;create=true;user=kk;password=kk";
                Connection con=DriverManager.getConnection(url);
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,user_emailId);
            ResultSet rs=ps.executeQuery();
                
            while(rs.next())
            {
                emailID=rs.getString("mail");
            }
            
            if(emailID.equals(user_emailId))
            {           
                response.getWriter().println("User Already Registered");
            }
            else
            {
             response.getWriter().println("This is New Email-id for Registration");
            }
        } catch (ClassNotFoundException ex) {
                Logger.getLogger(mailChecking.class.getName()).log(Level.SEVERE, null, ex);
            }
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
                processRequest(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(mailChecking.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(mailChecking.class.getName()).log(Level.SEVERE, null, ex);
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
                processRequest(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(mailChecking.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(mailChecking.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
