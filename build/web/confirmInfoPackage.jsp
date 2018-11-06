<%-- 
    Document   : confirmInfoPackage
    Created on : Nov 2, 2018, 11:20:20 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/confirInfoPackage.css">
        <title>Package Information</title>
    </head>
    <body>
        <div class="InforPackageHeader">
            <img src="Image/packageinformation.png" style="width: 80px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">                       
            <h2>Thông tin đơn hàng</h2>   
            <div id="divTop"></div>  
            <div id="divBottom"></div> 
        </div>
        <form method="Post" action="/ProjectPRJ321Version10/SaveOrderServlet" >
        
        <table class="InforPackageTable">
            <tr>
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
                            <input type="text" name="maDH" value="${maDH}" disabled  >
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
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
                            <input type="text"  value="${sessionScope.maBC}" disabled>
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
                            <input type="text" name="tenGui" value="${tenGui}" disabled >
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
                            <input type="text" name="diaChiGui" value="${diaChiGui}" disabled >
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
                            <input type="text" name="sdtGui" value="${sdtGui}" disabled >
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
                            <input type="text" name="tenNhan" value="${tenNhan}" disabled >
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
                            <input type="text" name="diaChiNhan" value="${diaChiNhan}" disabled >
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
                            <input type="text" name="sdtNhan" value="${sdtNhan}" disabled >
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
                <td colspan="2">
                    <div class="TextContainlabelInforPackageOdd">  
                        <b>
                            <input type="text" name="productType" value="${productType}" disabled />
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
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
                            <input type="number" name="khoiLuong" value="${khoiLuong}" disabled >
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>

            <tr>
                <td>
                    <div class="labelInforPackageOdd">                     
                        <b>
                            Phí Ship
                        </b>
                        <div class="divfirst"></div>
                        <div class="divMain"></div>
                    </div>
                </td>
                <td colspan="2">
                    <div class="TextContainlabelInforPackageOdd">  
                        <b>
                            <input type="number" name="phiShip" value="${phiShip}" disabled >
                        </b>
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
                            <input type="number" name="phiThuHo" value="${phiThuHo}" disabled >
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
            <tr>
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
                            <input type="number" name="tongTien" value="${tongTien}" disabled >
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
         
            <tr>
                <td colspan="3">                 
                    <div class="InforPackageQR"> 
                        <div class="divfirstQR"></div>
                        <img src="${qrImg}" width="200px" height="200px">
                        <div class="divlastQR"></div>
                    </div>                  
                </td>
            </tr>                       
        </table>
           <button type="submit" style="width: 10%;height: 50px;border-radius: 5px;background-color: rgb(255, 116, 23);margin-left: 450px;"><b>SAVE</b></button>
        </form>
    </body>
</html>
