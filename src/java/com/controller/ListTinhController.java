/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class ListTinhController {
    private List<String> listMa;
    private List<String> listTen;

    public ListTinhController(List<String> listMa, List<String> listTen) {
        this.listMa = listMa;
        this.listTen = listTen;
    }

    public List<String> getListMa() {
        return listMa;
    }

    public void setListMa(List<String> listMa) {
        this.listMa = listMa;
    }

    public List<String> getListTen() {
        return listTen;
    }

    public void setListTen(List<String> listTen) {
        this.listTen = listTen;
    }
    
}
