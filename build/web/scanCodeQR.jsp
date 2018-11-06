<%-- 
    Document   : scanCodeQR
    Created on : Nov 2, 2018, 3:51:33 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/scanCode.css">
        <title>Scan Code QR</title>
    </head>
    <body>
        <div style="position: relative;margin-top: 50px;height: 150px;color: white;background: linear-gradient(0.25turn,rgb(233, 180, 69),rgb(249, 100, 0)); ">
            <div style="position: absolute;top: 0;bottom: 0;right: 0;left: 0;font-size: 40px;margin:auto;width: 50%;height: 50px; ">Scan Code QR</div>
        </div>
        <div class="scanCodeContainer">       
            <div class="scanCodeSub" style="width: 70%;">
                <jsp:include page="InforPackage.jsp"/>
            </div>
            <div class="scanCodeSub" style="width: 30%;">
                <div class="scanCodeSubContainVideo">
                    <video id="videoID1" autoplay></video>
                </div>        
                <center>
                    <h1><b>Quét Mã QR</b></h1>

                    <form id="myForm1" method="POST" action="/ProjectPRJ321Version10/QrCodeGetInfoOrderServlet">
                        <div> 
                            <input class="buttonScanCodeSubContain" type="button" value="Send" onclick="send1()" /> 
                        </div>
                        <div>
                            <input type="text" style="background-color: rgb(247, 112, 10);border: none;" name="qrCode1" value="${qrCode1}" id="qrCode1"/>                 
                        </div>
                    </form>

                </center>
                <div class="scanCodeSubContainCanvas">
                    <canvas id="canvasID1">
                    </canvas> 
                </div> 
            </div>
        </div>
        <script type="text/javascript">
            var video1 = document.getElementById('videoID1');
            var canvas1 = document.getElementById('canvasID1');
            var context1 = canvas1.getContext('2d');
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
            function send1() {
                context1.drawImage(video1, 0, 0, canvas1.width, canvas1.height);
                var imageData = canvas1.toDataURL();
                var xmlhttp = new XMLHttpRequest();
                document.getElementById('qrCode1').value = imageData;
                document.getElementById('myForm1').submit();
//                xmlhttp.open("POST", "/qrcode/QrCodeController", true); 
//                xmlhttp.send(imageData); 
            }
            ;

            function conf() {
                    alert("<%= request.getAttribute("show")%>");
                var r = confirm("Press a button!");
                if (r === true) {
            <%request.setAttribute("show", "OK");%>
                    alert("<%= request.getAttribute("show")%>");
                } else {
            <%request.setAttribute("show", "Cancel");%>
                    alert("<%= request.getAttribute("show")%>");
                }

            }

        </script>
        <script type="text/javascript">
                var textArea = document.getElementById("StatusTableTextArea");

                function Active(x) {
                    var status = document.getElementsByName("status");
                    //remove all the active
                    for (var i = 0; i < status.length; i++) {
                        status[i].classList.remove("ActiveClass");
                    }

                    //add the active for it
                    for (var i = 0; i < status.length; i++) {
                        if (i !== x) {
                            status[i].classList.add("ActiveClass");
                        } else {
                            break;
                        }
                    }
                    // x = 1 là trạng thái nhận yêu cầu đặt hàng
                    // x = 2 là trạng thái đã chuyển giao cho bộ phận giao nhận
                    // x = 3 là trạng thái đã giao hàng
                }

                //deactive class
                var containInfor = document.getElementsByName("containInfor");
                for (var i = 0; i < containInfor.length; i++) {
                    containInfor[i].classList.add("ActiveInputClass");
                    containInfor[i].classList.remove("InActiveInputClass");
                }
        </script>
    </body>
</html>
