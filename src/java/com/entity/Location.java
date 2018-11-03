/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class Location {
    private String tinh;
    private List<String> huyen;

    public Location(String tinh, List<String> huyen) {
        this.tinh = tinh;
        this.huyen = huyen;
    }

    public String getTinh() {
        return tinh;
    }

    public void setTinh(String tinh) {
        this.tinh = tinh;
    }

    public List<String> getHuyen() {
        return huyen;
    }

    public void setHuyen(List<String> huyen) {
        this.huyen = huyen;
    }

   
    
}
