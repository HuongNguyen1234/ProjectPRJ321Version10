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
        <div class="scanCodeContainer">
<!--            <div class="scanCodeSub" style="width: 70%;background-color: antiquewhite">
                <input type="button" style="position: absolute;
                       right: 0;" value="Show" onclick="conf()">
           
            </div>-->
            <div class="scanCodeSub" style="width: 30%;background-color: coral;">
                <div class="scanCodeSubContainVideo">
                    <video id="videoID1" autoplay></video>
                </div>        
                <center>
                <h1><b>Quét Mã QR</b></h1>
                <div> 
                    <form id="myForm1" method="POST" action="/ProjectPRJ321Version10/QrCodeGetInfoOrderServlet">
                        <input type="text"  name="qrCode1" value="${qrCode1}" id="qrCode1"/>
                    <input class="buttonScanCodeSubContain" type="button" value="Send" onclick="send1()" /> 
                    </form>
                </div>
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
                    { video : true }, 
                    function(stream) { 
                        video.src = window.URL.createObjectURL(stream); 
                    }, 
                    function(e) { 
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
            };

            function conf(){
                alert("<%= request.getAttribute("show")%>");
                var r = confirm("Press a button!");
                if (r === true) {
                    <%request.setAttribute("show","OK");%>
                                alert("<%= request.getAttribute("show")%>");
                } else {
                    <%request.setAttribute("show","Cancel");%>
                        alert("<%= request.getAttribute("show")%>");
                }
                
            }

        </script>
            
    </body>
</html>
