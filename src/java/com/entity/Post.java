/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author huong karatedo
 */
public class Post {
    private float maBC;
    private String tenBC;
    private String tinh;
    private String huyen;
    private String xa;
    private String thon;

    public Post(float maBC, String tenBC, String tinh, String huyen, String xa, String thon) {
        this.maBC = maBC;
        this.tenBC = tenBC;
        this.tinh = tinh;
        this.huyen = huyen;
        this.xa = xa;
        this.thon = thon;
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

    public String getTinh() {
        return tinh;
    }

    public void setTinh(String tinh) {
        this.tinh = tinh;
    }

    public String getHuyen() {
        return huyen;
    }

    public void setHuyen(String huyen) {
        this.huyen = huyen;
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
        return  "Mã bưu cục:"+maBC+"\n"+"Bưu Cục"+tenBC+"\n"+"Địa Chỉ: "+thon+","+xa+","+huyen+","+tinh+"\n";
    }

    
    

    

    
   
    
}
