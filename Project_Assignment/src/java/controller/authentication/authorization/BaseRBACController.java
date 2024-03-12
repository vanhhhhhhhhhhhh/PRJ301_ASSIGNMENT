/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.authentication.authorization;

import controller.authentication.BaseRequiredAuthenticationController;
import dal.RoleDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Role;

/**
 *
 * @author VietAnh
 */
public abstract class BaseRBACController extends BaseRequiredAuthenticationController {
   
   
    private ArrayList<Role> getRoles(Account account, HttpServletRequest request){
        RoleDBContext roleDB = new RoleDBContext();
        String url = request.getServletPath();
        System.out.println("anhnvhe:"+url);
        return roleDB.getByUsernameAndURL(account.getUsername(), url);
        
    }


    
    protected void processGet(HttpServletRequest request, HttpServletResponse response, Account account)
    throws ServletException, IOException {
        
        ArrayList<Role> roles = getRoles(account, request);
        if(roles.size() < 1){
            response.getWriter().println("<h1>Access denied</h1>");
        }else{
            processGet(request, response, account, roles);
        }
        
    } 


    protected void processPost(HttpServletRequest request, HttpServletResponse response,  Account account)
    throws ServletException, IOException {
        ArrayList<Role> roles = getRoles(account, request);
        if(roles.size() < 1){
            response.getWriter().println("<h1>Access denied</h1>");
        }else{
            processPost(request, response, account, roles);
        }
    }
    
    
    
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response, Account account, ArrayList<Role> roles)
            throws ServletException, IOException;
    
    
    
    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response, Account account, ArrayList<Role> roles)
            throws ServletException, IOException;

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
