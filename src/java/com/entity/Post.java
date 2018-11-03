/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import com.data.DAO;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author huong karatedo
 */
public class Post {
    private float maBC;
    private String tenBC;
    private String Matinh;
    private String MaHuyen;
    private String xa;
    private String thon;
    
    public Post(float maBC, String tenBC, String Matinh, String MaHuyen, String xa, String thon) {
        this.maBC = maBC;
        this.tenBC = tenBC;
        this.Matinh = Matinh;
        this.MaHuyen = MaHuyen;
        this.xa = xa;
        this.thon = thon;
    }
    public String getTenTinh(String maTinh) throws Exception{
        DAO dao=new DAO();
        return dao.getTenTinh(maTinh);
    }
    public String getTenHuyen(String maHuyen) throws Exception{
        DAO dao=new DAO();
        return dao.getTenHuyen(maHuyen);
    }
    public float getMaBC() {
        return maBC;
    }

    public void setMaBC(float maBC) {
        this.maBC = maBC;
    }

    public String getTenBC() {
        return tenBC;
    }

    public void setTenBC(String tenBC) {
        this.tenBC = tenBC;
    }

    public String getMatinh() {
        return Matinh;
    }

    public void setMatinh(String Matinh) {
        this.Matinh = Matinh;
    }

    public String getMaHuyen() {
        return MaHuyen;
    }

    public void setMaHuyen(String MaHuyen) {
        this.MaHuyen = MaHuyen;
    }

    public String getXa() {
        return xa;
    }

    public void setXa(String xa) {
        this.xa = xa;
    }

    public String getThon() {
        return thon;
    }

    public void setThon(String thon) {
        this.thon = thon;
    }

   

    @Override
    public String toString() {
        try {
            return  "Mã bưu cục:"+maBC+"\n"+"Bưu Cục"+tenBC+"\n"+"Địa Chỉ: "+thon+","+xa+","+getTenHuyen(MaHuyen)+","+getTenTinh(Matinh)+"\n";
        } catch (Exception ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
    

    

    
   
    
}
