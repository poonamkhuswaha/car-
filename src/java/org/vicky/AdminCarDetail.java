/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vicky;

/**
 *
 * @author Vikram Singh Negi
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class AdminCarDetail {

    private String cname;
    private String csprice;
    private String crto;
    private String cinsurance;
    private String cocharge;
    private String cemi;
    private String croadp;
    private String cryear;
    private String cbrand;
    private String ccolor;
    private String cownership;
    
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

  
    public String getCsprice() {
        return csprice;
    }

    /**
     * @param csprice the csprice to set
     */
    public void setCsprice(String csprice) {
        this.csprice = csprice;
    }

    /**
     * @return the crto
     */
    public String getCrto() {
        return crto;
    }

    /**
     * @param crto the crto to set
     */
    public void setCrto(String crto) {
        this.crto = crto;
    }

    /**
     * @return the cinsurance
     */
    public String getCinsurance() {
        return cinsurance;
    }

    /**
     * @param cinsurance the cinsurance to set
     */
    public void setCinsurance(String cinsurance) {
        this.cinsurance = cinsurance;
    }

    /**
     * @return the cocharge
     */
    public String getCocharge() {
        return cocharge;
    }

    /**
     * @param cocharge the cocharge to set
     */
    public void setCocharge(String cocharge) {
        this.cocharge = cocharge;
    }

    /**
     * @return the cemi
     */
    public String getCemi() {
        return cemi;
    }

    /**
     * @param cemi the cemi to set
     */
    public void setCemi(String cemi) {
        this.cemi = cemi;
    }

    /**
     * @return the croadp
     */
    public String getCroadp() {
        return croadp;
    }

    /**
     * @param croadp the croadp to set
     */
    public void setCroadp(String croadp) {
        this.croadp = croadp;
    }

    /**
     * @return the cryear
     */
    public String getCryear() {
        return cryear;
    }

    /**
     * @param cryear the cryear to set
     */
    public void setCryear(String cryear) {
        this.cryear = cryear;
    }

    /**
     * @return the cbrand
     */
    public String getCbrand() {
        return cbrand;
    }

    /**
     * @param cbrand the cbrand to set
     */
    public void setCbrand(String cbrand) {
        this.cbrand = cbrand;
    }

    /**
     * @return the ccolor
     */
    public String getCcolor() {
        return ccolor;
    }

    /**
     * @param ccolor the ccolor to set
     */
    public void setCcolor(String ccolor) {
        this.ccolor = ccolor;
    }

    /**
     * @return the cownership
     */
    public String getCownership() {
        return cownership;
    }

    /**
     * @param cownership the cownership to set
     */
    public void setCownership(String cownership) {
        this.cownership = cownership;
    }
    
    public int store() throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         
        String url="jdbc:derby://localhost:1527/kk;create=true;user=kk;password=kk";
        Connection con=DriverManager.getConnection(url);

        PreparedStatement ps = con.prepareStatement("insert into admincdl(cname,csprice,crto,cinsurance,cocharge,cemi,croadp,cryear,cbrand,ccolor,cownership)values (?,?,?,?,?,?,?,?,?,?,?)");
    
        ps.setString(1, cname);
        ps.setString(2, csprice);
        ps.setString(3, crto);
        ps.setString(4, cinsurance);
        ps.setString(5, cocharge);
        ps.setString(6, cemi);
        ps.setString(7, croadp);
        ps.setString(8, cryear);
        ps.setString(9, cbrand);
        ps.setString(10, ccolor);
        ps.setString(11, cownership);
    
    int a=ps.executeUpdate();
        
        if(a==1) {
            return a;
        }else {
            return a;
        }
    }
    
}
