/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.User;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author patel
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    PreparedStatement loginStatement;
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
        String username = request.getParameter("username").toUpperCase();
        String password = request.getParameter("password");
        try
        {
            javax.naming.Context ctx = new javax.naming.InitialContext();
            DataSource ds = (DataSource) ctx.lookup("jdbc/hotelapp");
            
            try(Connection conn = ds.getConnection())
            {
                String query = "SELECT * FROM USERS WHERE USERNAME='"+username+"' AND PASSWORD='"+password+"'";
                ResultSet rs = conn.createStatement().executeQuery(query);
                boolean found = false;
                while(rs.next())
                {
                    if(rs.getString("username").equalsIgnoreCase(username))
                    {
                        request.getSession().setAttribute("user", new User(rs.getString("username"), rs.getString("fname"),rs.getString("lname"), rs.getString("role"), rs.getString("password"),rs.getString("email")));
                        response.sendRedirect(rs.getString("role").toLowerCase().concat("Home.jsp"));
                        found = true;
                        break;
                    }
                }
                if(!found)
                {
                    response.sendRedirect("index.jsp");
                }
            }
        }
        catch(SQLException | NamingException e)
        {
            if( e instanceof SQLException)
            {
                // your query failed
                System.out.println(e);
            }
            
            // database lookup failed
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
        response.sendRedirect("index.jsp");
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
        processRequest(request, response);
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
