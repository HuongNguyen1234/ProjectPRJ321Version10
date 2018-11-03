<%-- 
    Document   : chargeAndDelivery
    Created on : Oct 22, 2018, 4:33:19 AM
    Author     : Nguyen Bao Long
--%>

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
        <form action="" method="post">
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
                            <div class="bannersodd">
                                <center><div class="containText"></div></center>
                            </div>
                        </td>
                        <td>
                            <div class="banners3odd">
                                <input type="radio" name="country" value="on">
                                In Your Country
                            </div>
                        </td>
                        <td>
                            <div class="banners2odd">
                                <input type="radio" name="country" value="out">
                                Out Of Your Country
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="banners">
                                <center><div class="containText">
                                    FROM
                                    </div></center>
                            </div>
                        </td>
                        <td colspan="2">
                            <div class="banners2">
                                <select>
                                    <option>HCM</option>
                                    <option>HaNoi</option>
                                    <option>VietBac</option>
                                    <option>MyTan</option>
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
                                <select style="background-color: rgb(211, 109, 98);">
                                    <option>HCM</option>
                                    <option>HaNoi</option>
                                    <option>VietBac</option>
                                    <option>MyTan</option>
                                </select>
                            </div>
                        </td>
                        <td>
                            <div class="banners2odd">
                                <select style="background-color: rgb(211, 109, 98);">
                                    <option>District 1</option>
                                    <option>District 2</option>
                                    <option>District 3</option>
                                    <option>District 4</option>
                                </select>
                            </div>
                        </td>
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
                            <input type="radio">Product
                            </div>
                        </td>
                        <td>
                            <div class="banners2">
                            <input type="radio">Letter
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
                                <input type="text" style="background-color: rgb(211, 109, 98);">
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
                            <input type="text">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Tra cứu"></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </form>
        <script src="JS/chargeStyle.js" type="text/javascript"></script>
    </body>
</html>
