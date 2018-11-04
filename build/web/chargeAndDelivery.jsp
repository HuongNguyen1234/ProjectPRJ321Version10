<%-- 
    Document   : chargeAndDelivery
    Created on : Oct 22, 2018, 4:33:19 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.MienController"%>
<%@page import="com.data1.DAO"%>
<%@page import="com.controller.TinhController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Charge and Delivery</title>
        <link rel="stylesheet" type="text/css" href="CSS/chargStyle.css">
    </head>
    <body>
        <c:if test="${currentTinh == null}&&${currentTinh1 == null}&&${currentMien==null}">
            <c:redirect url="/ChargeDeliveryServlet?tinh1=1&tinh=1&huyen=11&mien=11c"/>
        </c:if>
        <%
            //        if (request.getParameter("tinh") == null) {
            //            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
            //        }
            DAO dao = new DAO();
            TinhController listTinh = new TinhController();
            MienController listMien= new MienController();
            listTinh.setListTinh(dao.getAllTinhBuuCuc());
            listMien.setMien(dao.getMien());

        %>
        <form action="/ProjectPRJ321Version10/ChargeDeliveryServlet" method="Post">
            <div class="chargeAndDeliveryTable">
                <table >
                    <tr>
                        <th colspan="3">
                            <div class="bannersMain">
                                <center><div class="containText">Charge and Delivery Time</div></center>                          
                            </div>
                        </th>
                    </tr>
                    
                      <tr>
                        <td>
                            <div class="banners">
                                <center><div class="containText">
                                        TYPE
                                    </div></center>
                            </div>
                        </td>
                        <td>
                            <div class="banners3">
                                <input type="radio" name="type" id="type" value="Product" required checked="true">Product
                            </div>
                        </td>
                        <td>
                            <div class="banners2"  value="Letter" >
                                <input type="radio" name="type" id="type" value="Letter" required>Letter
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="bannersodd">
                                <center><div class="containText">
                                        WEIGHT
                                    </div></center>
                            </div>
                        </td>
                        <td colspan="2" >
                            <div class="banners2odd">
                                <input type="number" name="gam" id="g" value="${gam}"  required  style="background-color: rgb(211, 109, 98);">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="bannersodd">
                                <center><div class="containText">
                                        Miền Gửi
                                    </div></center>
                            </div>
                        </td>
                        <td colspan="2" >
                            <div class="banners2">
                                <select id="mien"  style="background-color: rgb(211, 109, 98);">
                                        <c:forEach  var="i" items="<%=listMien.getMien()%>">
                                            <c:if test="${currentMien != i.getMaMien()}">
                                                <option value="${i.getMaMien()}" >${i.getTenMien()}</option>
                                            </c:if>
                                            <c:if test="${currentMien ==i.getMaMien()}">
                                                <option value="${i.getMaMien()}" selected >${i.getTenMien()}</option>
                                            </c:if>

                                        </c:forEach>
                                    </select>
                            </div>
                        </td>
                    </tr>
                        <td>
                            <div class="banners">
                                <center><div class="containText">
                                        FROM
                                    </div></center>
                            </div>
                        </td>
                        <td colspan="2">
                            <div class="banners2">
                                <select id="tinh1"  style="background-color: rgb(211, 109, 98);">
                                        <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                                            <c:if test="${currentTinh1 != i. getMaTinh()}">
                                                <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                                            </c:if>
                                            <c:if test="${currentTinh1 == i.getMaTinh()}">
                                                <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                                            </c:if>

                                        </c:forEach>
                                    </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="bannersodd">
                                <center><div class="containText">
                                        TO
                                    </div></center>
                            </div>
                        </td>
                        <td>
                            <div class="banners3odd">
                                    <select id="tinh" onchange="change()" style="background-color: rgb(211, 109, 98);">
                                        <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                                            <c:if test="${currentTinh != i. getMaTinh()}">
                                                <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                                            </c:if>
                                            <c:if test="${currentTinh == i.getMaTinh()}">
                                                <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                                            </c:if>

                                        </c:forEach>
                                    </select>
                            </div>
                        </td>
                        <td>
                            <div class="banners2odd">
                                    <select id="huyen" onchange="changeHuyen()" style="background-color: rgb(211, 109, 98);">
                                        <c:forEach  var="i" items="${huyen}">

                                            <c:if test="${currentHuyen != i.getMaHuyen()}">
                                                <option value="${i.getMaHuyen()}" >${i.getTenHuyen()}</option>
                                            </c:if>
                                            <c:if test="${ currentHuyen == i.getMaHuyen()}">
                                                <option value="${i.getMaHuyen()}" selected>${i.getTenHuyen()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                            </div>
                        </td>
                    </tr>
                  
                    <tr>
                        <td>
                            <div class="banners">
                                <center><div class="containText">
                                        PREPAYMENT
                                    </div></center>
                            </div>
                        </td>
                        <td colspan="2">
                            <div class="banners2">
                                <b>${payment}</b>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        <script type="text/javascript">
            function change() {
                var xmlhttp = new XMLHttpRequest();
                setTimeout(function () {
                    window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ChargeDeliveryServlet?tinh1=" +
                            document.getElementById('tinh1').value+
                            "&tinh="+document.getElementById('tinh').value+
                            "&mien="+document.getElementById('mien').value+
                            "&gam="+document.getElementById('g').value+
                           "&type="+document.getElementById('type').value;
                }, 400);
    
            }

            function changeHuyen() {
                var xmlhttp = new XMLHttpRequest();
                window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ChargeDeliveryShowInforPost?huyen=" +
                        document.getElementById('huyen').value + "&tinh="+document.getElementById('tinh').value +
                        "&tinh1=" + document.getElementById('tinh1').value+ 
                        "&mien="+document.getElementById('mien').value+
                        "&gam="+document.getElementById('g').value+
                        "&type="+document.getElementById('type').value;
    ////            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowInforPost", true);
    ////            xmlhttp.send(document.getElementById('huyen').value);
            }

            </script>
            <script src="JS/chargeStyle.js" type="text/javascript"></script>
        </body>
    </html>
