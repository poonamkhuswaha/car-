/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vicky;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.websocket.Decoder;
import javax.websocket.Encoder;



@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB


/**
 *
 * @author Vikram Singh Negi
 */
public class SaleImgData extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaleImgData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaleImgData at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");


            String SAVE_DIR="image";        
            String appPath = request.getServletContext().getRealPath("");
                    out.println( appPath );
         String savePath = appPath + File.separator + SAVE_DIR;
        File fileSaveDir = new File(savePath);
        
        if( !fileSaveDir.exists() )
        {
            fileSaveDir.mkdir();
        }
       
          System.out.println( savePath + File.separator + "sample.jpg" );
        
        File f = new File( savePath + File.separator + "sample.jpg" );
      
        FileOutputStream fos = new FileOutputStream(f);
        BufferedOutputStream bos = new BufferedOutputStream(fos);
        
        Part part = request.getPart("file121");
        
        {
            
            String filename = "sample.jpg";
            
            byte b[] = new byte[part.getInputStream().available()];
            
            part.getInputStream().read(b);
            
            bos.write(b);
               
        }
       
        
        bos.close();
        fos.close();
        
      
        try
        {
            Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
// apna cloundinary name Api or key provide kar deio 
  "cloud_name", "dwnlmypaw",
  "api_key", "286827836915316",
  "api_secret", "c7zMT4RZHSycD2WPLDcy_tipr98"));

// iss m bas run kar
             Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
       
      System.out.println(uploadResult.get("url"));
                      System.out.println( uploadResult );
        }
        catch( Exception e  )
        {
            e.printStackTrace();
        }
        
            
       
//       String []values=request.getParameterValues("Dta_val");
//            System.err.println("list");
//            for (int i = 0; i < values.length ; i++) {
//              System.out.println(values[i]);
//              
//            }
//            for (int i = 0; i < values.length; i++) {
//           
//                    switch(i)
//               {
////                       case 0: threobj.setTheater_name(values[i]);break;
////                    case 1: threobj.setCapital_name(values[i]);break;
////                    case 2: threobj.setState_name(values[i]);break;
////                    case 3: threobj.setTheater_date(values[i]);break;
////                    case 4: threobj.setTheater_time(values[i]);break;
////                    case 5: threobj.setTheater_plan(values[i]);break;
//    
//               }
//           
//            }
             
//                            threobj.setTheater_pic(uploadResult.get("url").toString());
// 
//            threDao.addDta(threobj);
            response.sendRedirect("sale_products.jsp");
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
        } catch (Exception ex) {
            
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
            } catch (Exception ex) {
            
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
