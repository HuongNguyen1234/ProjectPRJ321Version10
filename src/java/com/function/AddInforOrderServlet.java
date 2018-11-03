/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.data.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author huong karatedo
 */
public class AddInforOrderServlet extends HttpServlet {

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
            DAO dao= DAO();
            HttpSession session = request.getSession();
            String maBC=request.getParameter("");
            String tenGui=request.getParameter("tenGui");
            String diaChiGui=request.getParameter("diaChiGui");
            int sdtGui= Integer.parseInt(request.getParameter("sdtGui"));
            String tenNhan=request.getParameter("tenNhan");
            String diaChiNhan=request.getParameter("diaChiNhan");
            int sdtNhan= Integer.parseInt(request.getParameter("sdtNhan"));
            String loaiHang=request.getParameter("productType");
            String mienGui=request.getParameter("mienGui");
//            float phiThuHo=Float.parseFloat(request.getParameter("phiThuHo"));
            float khoiLuong= Float.parseFloat(request.getParameter("khoiLuong"));
            float tongTien=0;
            float phiShip=0;
            float phiThuHo= Float.parseFloat(request.getParameter("phiThuHo"));
            String maDH= randomString(13);
            if(0<khoiLuong && khoiLuong<0.25){
               if(mienGui.equalsIgnoreCase("cung mien")){
                   phiShip=(float) 25.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (25.000+phiThuHo);
                   }
                   else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 29.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (29.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 29.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (29.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
            }
            else if(0.25<=khoiLuong && khoiLuong<=0.5){
                 if(mienGui.equalsIgnoreCase("cung mien")){
                   phiShip=(float) 30.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (30.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 35.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (35.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 40.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (40.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
            }
            else if(0.5<khoiLuong && khoiLuong<=1){
                if(mienGui.equalsIgnoreCase("cung mien")){
                   phiShip=(float) 42.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (42.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 54.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (54.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 55.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (55.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
            }
            else if(1<khoiLuong && khoiLuong<=1.5){
                if(mienGui.equalsIgnoreCase("cung mien")){
                   phiShip=(float) 54.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (54.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 68.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (68.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
               else if(mienGui.equalsIgnoreCase("lien mien")){
                   phiShip=(float) 71.000;
                   if(phiThuHo!=0){
                       tongTien=(float) (71.000+phiThuHo);
                   }else{
                       tongTien=phiShip;
                   }
               }
            }
           
        } catch (Exception e) {
             Logger.getLogger(AddInforOrderServlet.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    public String randomString(int length) {
        String[] chars = "ASDGHJKLOIUYTREWQZXCVBNM0123456789".split("");
        String str = "";
        Random ran = new Random();
        for (int i = 0; i < length; i++) {
            str += chars[ran.nextInt(chars.length)]+"FP";
        }
        return str;
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

    private DAO DAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
