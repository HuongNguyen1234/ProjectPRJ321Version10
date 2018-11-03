/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Tinh;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class TinhController {
   List<Tinh> listTinh;

    public TinhController(List<Tinh> listTinh) {
        this.listTinh = listTinh;
    }

    public List<Tinh> getListTinh() {
        return listTinh;
    }

    public void setListTinh(List<Tinh> listTinh) {
        this.listTinh = listTinh;
    }
   

    
}
