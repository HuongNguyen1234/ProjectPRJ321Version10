<%-- 
    Document   : editInforPackage
    Created on : Nov 2, 2018, 10:21:19 PM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.MienController"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Package Information</title>
    </head>
    <body>
        <div class="InforPackageHeader">
            <img src="Image/packageinformation.png" style="width: 80px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">                       
            <h2>Thêm đơn hàng</h2>   
            <div id="divTop"></div>  
            <div id="divBottom"></div> 
        </div>
        <c:if test="${currentMien==null}">
            <c:redirect url="/OrderShowMienServlet?mien=11c"/>
        </c:if>
        <%
            //        if (request.getParameter("tinh") == null) {
            //            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
            //        }
            DAO dao = new DAO();
//            TinhController listTinh = new TinhController();
            MienController listMien = new MienController();
//            listTinh.setListTinh(dao.getAllTinhBuuCuc());
            listMien.setMien(dao.getMien());

        %>
        <form method="Post" action="/ProjectPRJ321Version10/AddInforOrderServlet">
            <table class="InforPackageTable">
                <!--            <tr>
                                <td>
                                    <div class="labelInforPackageOdd">                     
                                        <b>
                                            Mã Đơn Hàng                          
                                        </b>
                                        <div class="divfirst"></div>
                                        <div class="divMain"></div>
                                    </div>
                                </td>
                                <td colspan="2">
                                    <div class="TextContainlabelInforPackageOdd">  
                                        <b>
                                            <input type="text" class="InforPackageTableInput" placeholder="SE0321321" style="background-color: rgb(139, 64, 0);">
                                        </b>
                                        <div class="divlast"></div>
                                    </div>                  
                                </td>
                            </tr>-->
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                Mã Bưu Cục
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b> 
                                ${sessionScope.maBC}
                                <!--                            <input type="text" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" placeholder="Dictrict 1">-->
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackageOdd">                     
                            <b>
                                Tên Người Gửi
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackageOdd">  
                            <b>                           
                                <input type="text" name="tenGui" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput">
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                Địa Chỉ Gửi
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b>                          
                                <input type="text" name="diaChiGui" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackageOdd">                     
                            <b>
                                ĐT Người Gửi
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackageOdd">  
                            <b>                           
                                <input type="text" name="sdtGui" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                Tên Người Nhận
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b>                          
                                <input type="text" name="tenNhan" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackageOdd">                     
                            <b>
                                Địa Chỉ Nhận
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackageOdd">  
                            <b>                          
                                <input type="text" name="diaChiNhan" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                ĐT Người Nhận
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b>                         
                                <input type="text" name="sdtNhan" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackageOdd">                     
                            <b>
                                Loại hàng
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td>
                        <div class="TextContainlabelLeftInforPackageOdd">  
                            <b>
                                <input type="radio" name="productType" selected="true" value="0"> 
                                Bưu Phẩm
                            </b>
                            <div class="divMain"></div>
                        </div>                  
                    </td>
                    <td>
                        <div class="TextContainlabelRightInforPackageOdd">  
                            <b>
                                <input type="radio" name="productType" value="1">
                                Thư
                            </b>
                            <div class="divlast"></div>
                        </div>   
                    </td>
                </tr>  
                <tr></tr>
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                Khối Lượng
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b>

                                <input type="number" name="khoiLuong" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>           
                <tr>
                    <td>
                        <div class="labelInforPackageOdd">                     
                            <b>
                                Miền Gửi
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackageOdd">  
                            <select id="mien"  name="mien" style="background-color: rgb(211, 109, 98);" value="${mien}" onchange="change()">
                                <c:forEach  var="i" items="<%=listMien.getMien()%>">
                                    <c:if test="${currentMien != i.getMaMien()}">
                                        <option value="${i.getMaMien()}" >${i.getTenMien()}</option>
                                    </c:if>
                                    <c:if test="${currentMien ==i.getMaMien()}">
                                        <option value="${i.getMaMien()}" selected >${i.getTenMien()}</option>
                                    </c:if>

                                </c:forEach>
                            </select>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="labelInforPackage">                     
                            <b>
                                Phí Thu Hộ
                            </b>
                            <div class="divfirst"></div>
                            <div class="divMain"></div>
                        </div>
                    </td>
                    <td colspan="2">
                        <div class="TextContainlabelInforPackage">  
                            <b>                          
                                <input type="number" name="phiThuHo" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" ">
                            </b>
                            <div class="divlast"></div>
                        </div>                  
                    </td>
                </tr>
                <!--            <tr>
                                <td>
                                    <div class="labelInforPackageOdd">                     
                                        <b>
                                            Tổng Tiền
                                        </b>
                                        <div class="divfirst"></div>
                                        <div class="divMain"></div>
                                    </div>
                                </td>
                                <td colspan="2">
                                    <div class="TextContainlabelInforPackageOdd">  
                                        <b>                            
                                            <input type="text" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" placeholder="???">
                                        </b>
                                        <div class="divlast"></div>
                                    </div>                  
                                </td>
                            </tr>                     -->
            </table>
            <button type="submit" style="width: 10%;height: 50px;border-radius: 5px;background-color: rgb(255, 116, 23)"><b>Xác Nhận</b></button>
        </form>
        <script>
            function change(){
                var mien=document.getElementById("mien");
                var val = mien.val();
                mien.value = val;
            }
        </script>
        <!--<button onclick="addSectionActive(6)" style="width: 10%;height: 50px;border-radius: 5px;background-color: rgb(255, 116, 23)"><b>SAVE</b></button>-->
    </body>
</html>
