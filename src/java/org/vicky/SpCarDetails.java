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
public class SpCarDetails {

private String cry;
private String cb;
private String cv;
private String ckd;
private String cc;
private String co;
private String ccity;
private String cpin;
private String xe;
private String naam;
private String gmail;
private String mobile;

   /**
     * @return the cry
     */
    public String getCry() {
        return cry;
    }

    /**
     * @param cry the cry to set
     */
    public void setCry(String cry) {
        this.cry = cry;
    }

    /**
     * @return the cb
     */
    public String getCb() {
        return cb;
    }

    /**
     * @param cb the cb to set
     */
    public void setCb(String cb) {
        this.cb = cb;
    }

    /**
     * @return the cv
     */
    public String getCv() {
        return cv;
    }

    /**
     * @param cv the cv to set
     */
    public void setCv(String cv) {
        this.cv = cv;
    }

    /**
     * @return the ckd
     */
    public String getCkd() {
        return ckd;
    }

    /**
     * @param ckd the ckd to set
     */
    public void setCkd(String ckd) {
        this.ckd = ckd;
    }

    /**
     * @return the cc
     */
    public String getCc() {
        return cc;
    }

    /**
     * @param cc the cc to set
     */
    public void setCc(String cc) {
        this.cc = cc;
    }

    /**
     * @return the co
     */
    public String getCo() {
        return co;
    }

    /**
     * @param co the co to set
     */
    public void setCo(String co) {
        this.co = co;
    }

    /**
     * @return the ccity
     */
    public String getCcity() {
        return ccity;
    }

    /**
     * @param ccity the ccity to set
     */
    public void setCcity(String ccity) {
        this.ccity = ccity;
    }

    /**
     * @return the cpin
     */
    public String getCpin() {
        return cpin;
    }

    /**
     * @param cpin the cpin to set
     */
    public void setCpin(String cpin) {
        this.cpin = cpin;
    }

    public int store() throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         
        String url="jdbc:derby://localhost:1527/kk;create=true;user=kk;password=kk";
        Connection con=DriverManager.getConnection(url);
        PreparedStatement ps = con.prepareStatement("insert into salersellingdata(cry,cb,cv,ckd,cc,co,ccity,cpin,xe,naam,gmail,mobile)values (?,?,?,?,?,?,?,?,?,?,?,?)");
           
        ps.setString(1, cry);
        ps.setString(2, cb);
        ps.setString(3, cv);
        ps.setString(4, ckd);
        ps.setString(5, cc);
        ps.setString(6, co);
        ps.setString(7, ccity);
        ps.setString(8, cpin);
    ps.setString(9, xe);
    ps.setString(10, naam);
    ps.setString(11, gmail);
    ps.setString(12, mobile);
    
        int a=ps.executeUpdate();
        
        if(a==1) {
            return a;
        }else {
            return a;
        }
    }

    /**
     * @return the xe
     */
    public String getXe() {
        return xe;
    }

    /**
     * @param xe the xe to set
     */
    public void setXe(String xe) {
        this.xe = xe;
    }

    /**
     * @return the naam
     */
    public String getNaam() {
        return naam;
    }

    /**
     * @param naam the naam to set
     */
    public void setNaam(String naam) {
        this.naam = naam;
    }

    /**
     * @return the gmail
     */
    public String getGmail() {
        return gmail;
    }

    /**
     * @param gmail the gmail to set
     */
    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    /**
     * @return the mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    


}
 