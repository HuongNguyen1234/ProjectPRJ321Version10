<%-- 
    Document   : Search
    Created on : Oct 30, 2018, 12:09:32 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.TinhController"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.List"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Office</title>
        <link rel="stylesheet" type="text/css" href="CSS/postOfficeStyle.css">  
    </head>
    <body>
    <center>
        <div class="searchPosHeader">
            <img src="Image/crown.png" alt="" style="width: 100px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">
            <div>
                <h2>Mạng lưới dịch vụ bưu điện</h2>        
            </div>
        </div>
    </center> 
    <c:if test="${currentTinh == null}">
        <c:redirect url="/ShowHuyenServlet?tinh=1"/>
    </c:if>
    <%
//        if (request.getParameter("tinh") == null) {
//            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
//        }
        DAO dao = new DAO();
        TinhController listTinh=new TinhController();
        listTinh.setListTinh(dao.getAllTinhBuuCuc());
        


    %>
    <form action="/ProjectPRJ321Version10/ShowHuyenServlet" method="post">
        <table class="postOfficeTable">
            <tr>
                <td>
                    <div class="labelPostOfficeTable">
                        <b>Tỉnh/Thành phố</b>
                    </div>                   
                </td>
                <td>
                    <div class="labelPostOfficeTable">
                        <b>Quận/Huyện</b>
                    </div>
                </td>
            </tr>
            <tr>
                <td>    
            <center>
                <select id="tinh" onchange="change()" >
                    <%--<c:choose>--%>
                    <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                         <c:if test="${currentTinh != i. getMaTinh()}">
                            <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                        </c:if>
                        <c:if test="${currentTinh == i.getMaTinh()}">
                            <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                        </c:if>
                        
                    </c:forEach>
                    <%--</c:choose>--%>
                    <!--                    <option value="-1"></option>
                                        <option value="59">An Giang                      </option>
                                        <option value="48">Bà Rịa Vũng Tàu              </option>
                                        <option value="9">Bắc Giang                     </option>
                                        <option value="12">Bắc Kạn                       </option>
                                        <option value="62">Bạc Liêu                      </option>
                                        <option value="8">Bắc Ninh                      </option>
                                        <option value="54">Bến Tre                       </option>
                                        <option value="37">Bình Định                     </option>
                                        <option value="49">Bình Dương                    </option>
                                        <option value="50">Bình Phước                    </option>
                                        <option value="45">Bình Thuận                    </option>
                                        <option value="63" selected>Cà Mau                        </option>
                                        <option value="58">Cần Thơ                       </option>
                                        <option value="13">Cao Bằng                      </option>
                                        <option value="34">Đà Nẵng                       </option>
                                        <option value="42">Đắk Lăk                       </option>
                                        <option value="69">Đắk Nông</option>
                                        <option value="67">Điện Biên</option>
                                        <option value="46">Đồng Nai                      </option>
                                        <option value="55">Đồng Tháp                     </option>
                                        <option value="38">Gia Lai                       </option>
                                        <option value="17">Hà Giang                      </option>
                                        <option value="24">Hà Nam                        </option>
                                        <option value="66">Hà Nội                        </option>
                                        <option value="30">Hà Tĩnh                       </option>
                                        <option value="5">Hải Dương                     </option>
                                        <option value="6">Hải Phòng                     </option>
                                        <option value="68">Hậu Giang</option>
                                        <option value="47">Hồ Chí Minh                </option>
                                        <option value="21">Hoà Bình                      </option>
                                        <option value="3">Hưng Yên                      </option>
                                        <option value="41">Khánh Hoà                     </option>
                                        <option value="60">Kiên Giang                    </option>
                                        <option value="39">Kon Tum                       </option>
                                        <option value="23">Lai Châu                      </option>
                                        <option value="44">Lâm Đồng                      </option>
                                        <option value="10">Lạng Sơn                      </option>
                                        <option value="19">Lào Cai                       </option>
                                        <option value="52">Long An                       </option>
                                        <option value="25">Nam Định                      </option>
                                        <option value="28">Nghệ An                       </option>
                                        <option value="26">Ninh Bình                     </option>
                                        <option value="43">Ninh Thuận                    </option>
                                        <option value="15">Phú Thọ                       </option>
                                        <option value="40">Phú Yên                       </option>
                                        <option value="31">Quảng Bình                    </option>
                                        <option value="35">Quảng Nam                     </option>
                                        <option value="36">Quảng Ngãi                    </option>
                                        <option value="7">Quảng Ninh                    </option>
                                        <option value="32">Quảng Trị                     </option>
                                        <option value="61">Sóc Trăng                     </option>
                                        <option value="22">Sơn La                        </option>
                                        <option value="51">Tây Ninh                      </option>
                                        <option value="4">Thái Bình                     </option>
                                        <option value="11">Thái Nguyên                   </option>
                                        <option value="27">Thanh Hoá                     </option>
                                        <option value="33">Thừa Thiên Huế</option>
                                        <option value="53">Tiền Giang                    </option>
                                        <option value="56">Trà Vinh                      </option>
                                        <option value="16">Tuyên Quang                   </option>
                                        <option value="57">Vĩnh Long                     </option>
                                        <option value="14">Vĩnh Phúc                     </option>
                                        <option value="18">Yên Bái                       </option>-->
                </select>
            </center>
            </td>
            <td>
            <center>
                <select id="huyen" onchange="changeHuyen()">
                    <%--<c:choose>--%>
                    <c:forEach  var="i" items="${huyen}">
                        <%--<c:if test="${currentHuyen == null}">--%>
                       
                        <%--</c:if>--%>
                        <c:if test="${currentHuyen != i.getMaHuyen()}">
                            <option value="${i.getMaHuyen()}" >${i.getTenHuyen()}</option>
                        </c:if>
                        <c:if test="${ currentHuyen == i.getMaHuyen()}">
                            <option value="${i.getMaHuyen()}" selected>${i.getTenHuyen()}</option>
                        </c:if>
                    </c:forEach>
                    <%--</c:choose>--%>
                </select>
            </center>
            </td>
            </tr>
            <!--            <tr>
                            <td colspan="2">
                        <center>
                            <input class="buttonPostOfficeTable" type="submit" value="Tìm" name="B1" >
                        </center>
                        </td>
                        </tr>-->
        </table>   
    </form>
    <div class="listPostOffice">
        <div class="listPostOfficeTextHeader">
            <h2 style="text-align: center">Danh sách bưu cục</h2>
        </div>
        <textarea class="listPostOfficeTextArea" >
            <c:forEach  var="i" items="${listpost}">
                ${i.toString()} 
            </c:forEach>
        </textarea>
    </div>              
    <!--            <div style="width: 49% ; float: right">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.587291008665!2d105.82171691410744!3d21.009174486009034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac81fe967f59%3A0x9bd0c3303b7f501a!2zUGhvbmcgVsWp!5e0!3m2!1svi!2s!4v1540787722810" style="border:1; width: 100% ; height: 900px ; margin-top: 30px"></iframe>
                </div>-->
    <script type="text/javascript">
        function change() {
            var xmlhttp = new XMLHttpRequest();
            setTimeout(function () {
                window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ShowHuyenServlet?tinh=" + document.getElementById('tinh').value;
            }, 400);
//            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowHuyenServlet?tinh=" + document.getElementById('tinh').value, true);
//            var url = document.getElementById('tinh').value.toDataURL();
//            xmlhttp.send(url);
//            location.reload();
        }

        function changeHuyen() {
            var xmlhttp = new XMLHttpRequest();
             window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ShowInforPost?huyen=" + document.getElementById('huyen').value + "&tinh=" + document.getElementById('tinh').value;
////            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowInforPost", true);
////            xmlhttp.send(document.getElementById('huyen').value);
        }

    </script>
</body>
</html>
