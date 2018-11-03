/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data;

import com.entity.Journal;
import com.entity.Order;
import com.entity.Post;
import com.entity.Service;
import com.entity.Staff;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author huong karatedo
 */
public class DAO {

    private DBConnect db;

    public DAO() {
        db = new DBConnect();
    }

    public List<Order> getAllOrder() throws Exception {
        String xSql = "select * from Orders";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ResultSet rs = ps.executeQuery();
            List<Order> list = new ArrayList<>();
            while (rs.next()) {
                String maDH = rs.getString("MaHD");
                int maBC = rs.getInt("MaBC");
                String tenNguoiGui = rs.getString("TenNguoiGui");
                String diaChiGui = rs.getString("DiaChiGui");
                int sdtGui = rs.getInt("SdtGui");
                String tenNguoiNhan = rs.getString("TenNguoiNhan");
                String diaChiNhan = rs.getString("DiaChiNhan");
                String loaiHang = rs.getString("LoaiHang");
                float khoiLuong = rs.getFloat("KhoiLuong");
                int sdtNhan = rs.getInt("SdtNhan");
                float phiShip = rs.getFloat("PhiShip");
                float phiThuHo = rs.getFloat("PhiThuHo");
                float tongTien = rs.getFloat("TongTien");
                Order order = new Order(maDH, maBC, tenNguoiGui, diaChiGui, sdtGui, tenNguoiNhan, diaChiNhan, loaiHang, khoiLuong, sdtNhan, phiShip, phiThuHo, tongTien, loaiHang);
                list.add(order);
            }

            return list;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }

    public Post getPost(float mBC) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from BuuCuc where MaBC = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, mBC);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                float maBC = rs.getFloat("maBC");
                String tenBC = rs.getString("TenBC");
                String tinh = rs.getString("Tinh");
                String huyen = rs.getString("Huyen");
                String xa = rs.getString("Xa");
                String thon = rs.getString("Thon");

                Post p = new Post(maBC, tenBC, tinh, huyen, xa, thon);
                return p;
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return null;
    }

    public Staff getStaffLogin(String name, String pass) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from NhanVien where UserName=? and Password=?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            List<Staff> list = new ArrayList<>();
            while (rs.next()) {
                String id = rs.getString("Id");
                String ten = rs.getString("Ten");
                String diaChi = rs.getString("DiaChi");
                int sdt = rs.getInt("Sdt");
                String chucVu = rs.getString("ChucVu");
                int maBC = rs.getInt("maBC");
                String userName = rs.getString("UserName");
                String password = rs.getString("Password");
                Staff s = new Staff(id, ten, diaChi, sdt, chucVu, maBC, userName, password);

                return s;
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return null;
    }

    public Staff getStaff(float mBC) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from NhanVien where MaBC = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, mBC);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("Id");
                String ten = rs.getString("Ten");
                String diaChi = rs.getString("DiaChi");
                int sdt = rs.getInt("Sdt");
                String chucVu = rs.getString("ChucVu");
                int maBC = rs.getInt("maBC");
                String userName = rs.getString("UserName");
                String password = rs.getString("Password");
                Staff s = new Staff(id, ten, diaChi, sdt, chucVu, maBC, userName, password);
                return s;
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return null;
    }

    public List<String> getAllTinhBuuCuc() throws SQLException, Exception {
        String xSql = "select distinct MaTinh from BuuCuc";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ResultSet rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                String t = rs.getString("MaTinh");
                list.add(t);
            }

            return list;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }
    public List<String> getTenTinh(String maTinh) throws SQLException, Exception {
        String xSql = "select  Ten from Tinh where MaTinh=?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, maTinh);
            ResultSet rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                String t = rs.getString("Ten");
                list.add(t);
            }

            return list;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }
    

    public List<String> getAllQuan(String matinh) throws SQLException, Exception {
        String xSql = "select MaHuyen from BuuCuc where MaTinh=?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, matinh);
            ResultSet rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                String ma = rs.getString("MaHuyen");
                if (ma != null)  
                list.add(ma);
            }

            return list;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }
    public List<String> getTenQuan(String mahuyen ) throws SQLException, Exception {
        String xSql = "select TenHuyen from BuuCuc where MaHuyen=?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, mahuyen);
            ResultSet rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while (rs.next()) {
                String ten = rs.getString("TenHuyen");
                list.add(ten);
            }

            return list;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }

    public List<Post> getPost(String huyen) throws SQLException, Exception {
        String xSql = "select * from BuuCuc where Huyen=?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, huyen);
            ResultSet rs = ps.executeQuery();
            List<Post> list = new ArrayList<>();
            while (rs.next()) {
                float maBc = rs.getFloat("MaBC");
                String tenBC = rs.getString("TenBC");
                String tin = rs.getString("Tinh");
                String huye = rs.getString("Huyen");
                String xa = rs.getString("Xa/phuong");
                String thon = rs.getString("thon");
                Post p = new Post(maBc, tenBC, tin, huye, xa, thon);
                list.add(p);
            }

            return list;

        } catch (SQLException ex) {
            throw  ex;
        }
    }

   

    public Journal getJournal(int idHT) throws Exception {
        String result = "";
        String xSql = "select * from HanhTrinh where IdHT = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setInt(1, idHT);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int IdHT = rs.getInt("IdHT");
                String maDH = rs.getString("MaDH");
                Date thoiGian = rs.getDate("ThoiGian");
                String trangThai = rs.getString("TrangThai");
                String DiaChi = rs.getString("DiaChi");
                Journal jo = new Journal(IdHT, maDH, thoiGian, trangThai, DiaChi);
                return jo;
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return null;
    }

//    public void updatePassWordStaff(String username, String password) throws SQLException {
////        String result = "";
//        String xSql = "UPDATE NhanVien SET (name = ?) where code = ?";
//        Connection conn = null;
//        PreparedStatement ps = null;
//        try {
//            conn = db.getConnection();
//            ps = conn.prepareStatement(xSql);
//            ps.setString(1, name);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            conn.close();
//        }
//        //return null;
//    }
    public void addOrders(Order order) throws SQLException, Exception {
        String xSql = " insert into Orders (MaHD,MaBC,TenNguoiGui,DiaChiGui,SdtGui,TenNguoiNhan,DiaChiNhan,LoaiHang,KhoiLuong,SdtNhan,PhiShip,PhiThuHo,TongTien)"
                + " values (?, ?, ?,?,?,?,?,?,?,?,?,?,?)";

        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, order.getMaDH());
            ps.setInt(2, order.getMaBC());
            ps.setString(3, order.getTenNguoiGui());
            ps.setString(4, order.getDiaChiGui());
            ps.setInt(5, order.getSdtGui());
            ps.setString(6, order.getTenNguoiNhan());
            ps.setString(7, order.getDiaChiNhan());
            ps.setString(8, order.getLoaiHang());
            ps.setFloat(9, order.getKhoiLuong());
            ps.setInt(10, order.getSdtGui());
            ps.setFloat(11, order.getPhiShip());
            ps.setFloat(12, order.getPhiThuHo());
            ps.setFloat(13, order.getTongTien());
            ps.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

    public void addPost(Post p) throws SQLException, Exception {
        String xsql = "insert into BuuCuc (MaBC,TenBC,Tinh,Huyen,Xa,Thon)" + "value(?,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setFloat(1, p.getMaBC());
            ps.setString(2, p.getTenBC());
            ps.setString(3, p.getTinh());
            ps.setString(4, p.getHuyen());
            ps.setString(5, p.getXa());
            ps.setString(6, p.getThon());
            ps.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

    public void addDichVu(Service s) throws SQLException, Exception {
        String xsql = "insert into DichVu (MaBC,TenDV,GiaDV)" + "value(?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setInt(1, s.getMaBC());
            ps.setString(1, s.getTenDV());
            ps.setFloat(3, s.getGiaDV());
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

    public void addStaff(Staff staff) throws SQLException, Exception {
        String xsql = "insert into NhanVien (MaBC,Id,Ten,DiaChi,Sdt,ChucVu,UserName,Password)" + "value(?,?,?,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setFloat(1, staff.getMaBC());
            ps.setString(2, staff.getId());
            ps.setString(3, staff.getTen());
            ps.setString(4, staff.getDiaChi());
            ps.setInt(5, staff.getSdt());
            ps.setString(6, staff.getChucVu());
            ps.setString(7, staff.getUserName());
            ps.setString(8, staff.getPassword());
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

    public void addJournal(Journal j) throws SQLException, Exception {
        String xsql = "insert into HanhTrinh (IdHT,MaDH,ThoiGian,TrangThai,DiaChi)" + "value(?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setInt(1, j.getIdHT());
            ps.setString(2, j.getMaDH());
            ps.setDate(3, (java.sql.Date) j.getThoiGian());
            ps.setString(4, j.getTrangThai());
            ps.setString(5, j.getDiaChi());

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
//

    public void deleteNhanVien(String id) throws SQLException, Exception {
        String xSql = "DELETE FROM NhanVien WHERE Id = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

//    public Object[][] searchGroupName(String groupName, boolean isSort) {
////     int get = (int)jTable_show.getModel().getValueAt(jTable_show.getSelectedRow(), 0);
//        String xSql = "SELECT * FROM Project WHERE Employee_ID LIKE '%" + groupName + "%'";;
//        if (isSort == true) {
//            xSql += "ORDER by hours desc";
//        }
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        try {
//            conn = db.getConnection();
//            ps = conn.prepareStatement(xSql);
//            ResultSet rs = ps.executeQuery();
//            String StudentID, StudentName, Adrress;
//            String Status,GroupName;
//            List<Object[]> list = new ArrayList<>();
//            while (rs.next()) {
//                StudentID = rs.getString("StudentID");
//                StudentName = rs.getString("StudentName");
//                Adrress = rs.getString("Adrress");
//                Status = rs.getString("Status");
//                GroupName=rs.getString("GroupID");
////                boolean isFullTime = false;
////                if (Is_full_Time == 1) {
////                    isFullTime = true;
////                }
//                Object[] obj = {StudentID,StudentName,Adrress,Status,GroupName};
//                list.add(obj);
//            }
//            Object[][] objs = new Object[list.size()][4];
//            int i = 0;
//            for (Object[] object : list) {
//                objs[i] = object;
//                System.out.println(object[3]);
//                i++;
//            }
//            return objs;
//        } catch (Exception e) {
//            System.err.println("Got an exception! ");
//            JOptionPane.showMessageDialog(null, "Got an exception!");
//            System.err.println(e.getMessage());
//        }         // TODO add your handling code here:
//        return null;
//    }
}
