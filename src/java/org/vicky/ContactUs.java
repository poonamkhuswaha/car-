/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vicky;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Vikram Singh Negi
 */
public class ContactUs {
    
    private String name;
    private String contact;
    private String email;
    private String message;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }
    
    public int store() throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         
        String url="jdbc:derby://localhost:1527/kk;create=true;user=kk;password=kk";
        Connection con=DriverManager.getConnection(url);

        PreparedStatement ps = con.prepareStatement("insert into contactus(name,contact,email,message)values (?,?,?,?)");
           
        ps.setString(1, name);
        ps.setString(2, contact);
        ps.setString(3, email);
        ps.setString(4, message);
    
        int a=ps.executeUpdate();
        
        if(a==1) {
            return a;
        }else {
            return a;
        }
    }
    
    
    
}
