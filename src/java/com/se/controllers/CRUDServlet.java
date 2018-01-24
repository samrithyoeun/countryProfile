package com.se.controllers;

import com.se.ejb.CountryFacade;
import com.se.models.Country;
import static com.sun.xml.internal.ws.spi.db.BindingContextFactory.LOGGER;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author samrith
 */
@WebServlet(name = "CRUDServlet", urlPatterns = {"/CRUDServlet"})

@MultipartConfig(fileSizeThreshold = 1024*1024*2 ,
        maxFileSize= 1024*1024*10,
        maxRequestSize= 1024*1024*50)


public class CRUDServlet extends HttpServlet {

    @EJB
    CountryFacade cf;
    
    private final static Logger LOGGER = 
            Logger.getLogger(CRUDServlet.class.getCanonicalName());
    private static final long serialVersionUID = 1L;
  
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int id  = Integer.parseInt(request.getParameter("id"));
        int phonecode  = Integer.parseInt(request.getParameter("phonecode"));
        int numcode  = Integer.parseInt(request.getParameter("numcode"));
        String name = request.getParameter("name");
        String nicename = request.getParameter("nicename");
        String iso = request.getParameter("iso");
        String iso3 = request.getParameter("iso3");
        
        
        
            String action = request.getParameter("action").toLowerCase();
            String message="";
            if ("add country".equals(action)) {
               
                Country c = new Country(id,iso,name,nicename,iso3,numcode,phonecode);
                cf.add(c);
                message ="Add sucessfully";
                try (PrintWriter outt = response.getWriter()) {
                    outt.println("<h1>"+message+"</h1>");
                }
                uploadImage(request,response,message);
                
                
                
                    
            } else if ("update country".equals(action)) {
                cf.edit(new Country(id,iso,name,nicename,iso3,numcode,phonecode));
                message ="Update sucessfully";
                 try (PrintWriter outt = response.getWriter()) {
                    outt.println("<h1>"+message+"</h1>");
                }
                uploadImage(request,response,message);
                
                
                
                
                
            }else if ("delete country".equals(action)){
                cf.remove(id);
                message ="Delete sucessfully";
                 try (PrintWriter outt = response.getWriter()) {
                    outt.println("<h1>"+message+"</h1>");
                }
                
               
                
                
            }
             
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    private void uploadImage(HttpServletRequest request, HttpServletResponse response, String message) throws IOException, ServletException{
    response.setContentType("text/html;charset=UTF-8");
    final String path = "/Users/samrith/Desktop/WebApplication5/web/image";
         response.setContentType("text/html;charset=UTF-8");
        // Create path components to save the file
    
    final Part filePart = request.getPart("file");
    final String fileName = request.getParameter("iso")+".png";

    OutputStream out = null;
    InputStream filecontent = null;
    final PrintWriter writer = response.getWriter();

    try {
        out = new FileOutputStream(new File(path + File.separator+ fileName));
        filecontent = filePart.getInputStream();

        int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
        }
        LOGGER.log(Level.INFO, "File{0}being uploaded to {1}", new Object[]{fileName, path});
    } catch (Exception fne) {
        writer.println("You either did not specify a file to upload or are "
                + "trying to upload a file to a protected or nonexistent "
                + "location.");
        writer.println("<br/> ERROR: " + fne.getMessage());

        LOGGER.log(Level.SEVERE, "Problems during file upload. Error: {0}", new Object[]{fne.getMessage()});
    } finally {
        if (out != null) {
            out.close();
        }
        if (filecontent != null) {
            filecontent.close();
        }
        if (writer != null) {
            writer.close();
        }
        
        
        
    }
    
              
    }

    public void Search(HttpServletRequest request,HttpServletResponse response,String name) throws IOException, ServletException{
     
        try{
            Country c = cf.findByName(name);
            request.setAttribute("cou", c);
            request.getRequestDispatcher("result.jsp").forward(request,response);
        
        }catch(Exception e){
            request.setAttribute("message","We cannot find this country in our database! ");
            request.getRequestDispatcher("result.jsp").forward(request,response);
        }
       }
   
}
    
    

