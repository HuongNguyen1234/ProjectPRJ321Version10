/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.util.Date;

/**
 *
 * @author huong karatedo
 */
public class Journal {
    private int IdHT;
    private String maDH;
    private Date thoiGian;
    private String trangThai;
    private String diaChi;

    public Journal(int IdHT, String maDH, Date thoiGian, String trangThai, String diaChi) {
        this.IdHT = IdHT;
        this.maDH = maDH;
        this.thoiGian = thoiGian;
        this.trangThai = trangThai;
        this.diaChi = diaChi;
    }

    public int getIdHT() {
        return IdHT;
    }

    public void setIdHT(int IdHT) {
        this.IdHT = IdHT;
    }

    public String getMaDH() {
        return maDH;
    }

    public void setMaDH(String maDH) {
        this.maDH = maDH;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    
}
