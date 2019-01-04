package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/updateRoom"})
public class updateRoomServlet extends HttpServlet {

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
        String room_no = request.getParameter("room_no");
        String username = request.getParameter("username").toUpperCase();
        String start = request.getParameter("start_date");
        String end = request.getParameter("end_date");
        String comments = request.getParameter("comments");
        try
        {
            javax.naming.Context ctx = new javax.naming.InitialContext();
            DataSource ds = (DataSource) ctx.lookup("jdbc/hotelapp");
            
            try(Connection conn = ds.getConnection())
            {
                String query = "UPDATE BOOKINGS SET room_no=?, username=?, start_date=?, end_date=?, comments=? WHERE booking_id=? ";
                PreparedStatement ps = conn.prepareStatement(query);
                int updateQuery = ps.executeUpdate();
                System.out.println("record updated");
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
        processRequest(request, response);
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
