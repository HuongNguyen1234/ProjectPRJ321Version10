<%-- 
    Document   : status
    Created on : Oct 26, 2018, 9:54:38 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/status.css">
        <link rel="stylesheet" type="text/css" href="CSS/scanCode.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <title>Status</title>
    </head>
    <body>
        <!--===============================================Search bar=================================================================-->
        <!--        <div class="searchItemStatus">           
                    <div class="searchItemStatusContainText">
                        <input type="text" placeholder="Search...">
                        <button><i class="fas fa-search" ></i></button>
                    </div>
                </div>-->
        <!--==========================================================================================================================-->

        <div class="statusContainAll">
            <div class="mainStatusDesign" style="width: 70%;">
                <!--===============================================Edit and Save==============================================================-->            
                <!--            <button class="buttonEdit" id="edit" onclick="editInformation()">
                                Edit
                            </button>
                            <button class="buttonEdit" id="save" style="display: none;" onclick="saveInformation()">
                                Save
                            </button>-->
                <!--==========================================================================================================================-->
                <div class="headTableStatus">
                    <div class="headSubnetTableStatus">
                        <!--<div><i class="fas fa-barcode"> Trạng thái trước</i></div>-->
                        <p name="containInfor"><a href="/ProjectPRJ321Version10/PreviousStatusServlet?maDH=${maDH}"><input name="previous" type="button" value="Trạng thái trước" ></a></p>
                    </div>

                    <div class="headSubnetTableStatus">
                        <!--<div><i class="fas fa-barcode"> Trạng thái sau</i></div>-->
                        <!--onclick="non()-->
                        <p name="containInfor"><a href="/ProjectPRJ321Version10/IncreaseStatusServlet?maDH=${maDH}"><input name="after" type="button" value="Trạng thái sau" ></a></p>
                    </div>   
                </div>

                <div class="headTableStatus">
                    <div class="headSubnetTableStatus">
                        <div><i class="fas fa-barcode"> Bưu gửi số</i></div>
                        <p name="containInfor"><b><input name="maDH" type="text" value="${maDH}" disabled></b></p>
                    </div>

                    <div class="headSubnetTableStatus">
                        <div><i class="fas fa-barcode"> Trạng thái</i></div>
                        <p name="containInfor"><b><input name="tenTrangThai" type="text" value="${tenTrangThai}" ></b></p>
                    </div>          

                    <!--======================Icon Trạng thái(Cái này t có cách nhưng chắc mai nói sau) ==========================================-->                
                    <!--                <div class="headSubnetTableStatus">
                                        <div><i class="fab fa-free-code-camp"> Trạng thái</i></div>
                                        <a href="?trangthai=1">
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(1)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-file-invoice"></i>
                                            </div>
                                        </div>
                                            </a>
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(2)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-truck"></i>
                                            </div>
                                        </div> 
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(3)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-box"></i>  
                                                <i class="fas fa-boxes" ></i>                        
                                            </div>
                                        </div>                   
                                    </div>   -->
                    <!--==========================================================================================================================-->
                    <div class="headSubnetTableStatus" >
                        <div><i class="fas fa-balance-scale"> Khối lượng (gram)</i></div>
                        <p name="containInfor"><b><input name="infor" type="text" value="${khoiLuong}" disabled></b></p>
                    </div>
                </div>
                <div class="mainTableStatus">
                    <fieldset>
                        <legend>Thông tin trạng thái</legend>
                        <div id="StatusTableTextArea" class="containStatusTableText">
                            <p> ${journalList}</p>
                        </div>
                    </fieldset>

                    <!--======================================Tạm thời đóng lại để nếu có gì cần thì cho vào======================================-->                
                    <!--                <div>
                                        <div class="labelMainTableStatus">
                                            <div class="labelMainTableStatusCenter">
                                            Thông tin phát
                                            </div>
                                        </div>
                                        <table>
                                            <tr>
                                                <th>Ngày</th>
                                                <th>Bưu cục</th>
                                                <th>Chi tiết</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="17" type="text" disabled>
                                                    </div>    
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="SỐ 5" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="Không có chi tiết" type="text" disabled>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="labelMainTableStatus">
                                            <div class="labelMainTableStatusCenter">
                                            Thông tin chuyển thư
                                            </div>
                                        </div>
                                        <table>
                                            <tr>
                                                <th>Ngày đóng</th>
                                                <th>Bưu cục đóng</th>
                                                <th>Bưu cục nhận</th>
                                                <th>Thông tin CT</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="I don't know" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="don't do" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="hello" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="alo" type="text" disabled>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>-->
                    <!--==========================================================================================================================-->
                </div>
            </div>  
            <div class="statusContainAllQR" style="width: 30%;">
                <div class="scanCodeSubContainVideo">
                    <video id="videoID" autoplay></video>
                </div>           
                <center><h1><b>Quét Mã QR</b></h1>
                    <div> 
                        <form id="myForm" method="POST" action="/ProjectPRJ321Version10/QrCodeServlet">
                            <input type="text"  name="qrCode" value="${qrCode}" id="qrCode"/>
                            <input class="buttonScanCodeSubContain" type="button" value="Send" onclick="send()" /> 
                        </form>
                    </div>
                </center>
                <div class="scanCodeSubContainCanvas">
                    <canvas id="canvasID">
                    </canvas>
                </div>          
            </div> 

        </div>    
        <script type="text/javascript">
            var video = document.getElementById('videoID');
            var canvas = document.getElementById('canvasID');
            var context = canvas.getContext('2d');
            window.URL = window.URL || window.webkitURL;
            navigator.getUserMedia = navigator.getUserMedia
                    || navigator.webkitGetUserMedia
                    || navigator.mozGetUserMedia
                    || navigator.msGetUserMedia;
            navigator.getUserMedia(
                    {video: true},
                    function (stream) {
                        video.src = window.URL.createObjectURL(stream);
                    },
                    function (e) {
                        console.log('An error happened:', e);
                    }
            );
            function send() {
                context.drawImage(video, 0, 0, canvas.width, canvas.height);
                var imageData = canvas.toDataURL();
                document.getElementById('qrCode').value = imageData;
                console.log(document.getElementById('qrCode').value);
//                console.log(imageData);
                document.getElementById('myForm').submit();
//                var xmlhttp = new XMLHttpRequest();
//                xmlhttp.open("POST", "/ProjectPRJ321Version10/QrCodeServlet", true);
//                xmlhttp.send(imageData);
//                console.log(imageData);
            }
            ;



        </script>
    </body>
</html>
