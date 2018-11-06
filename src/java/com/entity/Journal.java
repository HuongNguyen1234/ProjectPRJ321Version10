/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author huong karatedo
 */
public class Journal {

    private String IdHT;
    private String maDH;
    private String trangThai;
    private Date thoiGian;
    private String diaChi;

    public Journal(String IdHT, String maDH, String trangThai, Date thoiGian, String diaChi) {
        this.IdHT = IdHT;
        this.maDH = maDH;
        this.trangThai = trangThai;
        this.thoiGian = thoiGian;
        this.diaChi = diaChi;
    }

    public String getIdHT() {
        return IdHT;
    }

    public void setIdHT(String IdHT) {
        this.IdHT = IdHT;
    }

    public String getMaDH() {
        return maDH;
    }

    public void setMaDH(String maDH) {
        this.maDH = maDH;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    @Override
    public String toString() {
        String tt;
        if (trangThai.equals("1d")) {
            tt = "Đã nhận đơn";
        } else if (trangThai.equals("2d")) {
            tt = "Đang vẫn chuyển";
        } else {
            tt = "Đã Giao Thành Công";
        }
//        Date date = java.util.Calendar.getInstance().getTime();
        SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss dd-MM-yyyy");
        String dateString = format.format(thoiGian);
        return dateString + " : " + tt + " tại " + diaChi + ".";
    }

}
