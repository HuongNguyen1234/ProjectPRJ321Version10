/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.controller.ListOrderController;
import com.data1.DAO;
import com.entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author huong karatedo
 */
public class SaveOrderServlet extends HttpServlet {

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
        try {
            DAO dao= new DAO();
            String maDH=request.getParameter("maDH");
            int maBC=Integer.parseInt(request.getParameter("maBC"));
            String tenGui = request.getParameter("tenGui");
            String diaChiGui = request.getParameter("diaChiGui");
            int sdtGui = Integer.parseInt(request.getParameter("sdtGui"));
            String tenNhan = request.getParameter("tenNhan");
            String diaChiNhan = request.getParameter("diaChiNhan");
            int sdtNhan = Integer.parseInt(request.getParameter("sdtNhan"));
            String loaiHang = request.getParameter("productType");
            int gam = Integer.parseInt(request.getParameter("khoiLuong"));
            float phiship=Float.parseFloat(request.getParameter("phiShip"));
            float phiThuHo=Float.parseFloat(request.getParameter("phiThuHo"));
            float tongtien=Float.parseFloat(request.getParameter("tongTien"));
           Order order= new Order(maDH, maBC, tenGui, diaChiGui, sdtGui, tenNhan, diaChiNhan, loaiHang, gam, sdtNhan, phiship, phiThuHo, tongtien);
            dao.addOrders(order);
        } catch (Exception e) {
            Logger.getLogger(SaveOrderServlet.class.getName()).log(Level.SEVERE, null, e); 
        
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
