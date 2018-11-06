<%-- 
    Document   : manageStaff
    Created on : Nov 3, 2018, 4:58:57 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.AbstractList"%>
<%@page import="com.entity.Staff"%>
<%@page import="java.util.List"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/manageStaf.css">
        <title>ManageStaff</title>
    </head>
    <body>
        <%
            DAO dao = new DAO();
            List<Staff> listStaff = new ArrayList<>();
            listStaff=dao.getStaff();
            
        %>
        <form method="Post" action="">
            <table class="manageStaffTable">
                <tr>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                USER
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Mã Bưu Cục
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Id
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Tên
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Địa Chỉ
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Số điện thoại 
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Chức vụ
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Xóa Nhân Viên
                            </div>
                        </div>
                    </th>
                </tr>
                <c:forEach var="i" items="${listStaff}">
                    <tr>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getTen()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getMaBC()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    <input  type="text" name="id" value="${i.getid}">
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getTen()}
                                </div>
                            </div> 
                        </td>
                        <td> 
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getDiaChi()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getSdt()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getDiaChi()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    <a href="/ProjectPRJ321Version10/DeleteStaffServlet"> <input type="button" value="delete"></a>
                                </div>
                            </div> 
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </body>
</html>
