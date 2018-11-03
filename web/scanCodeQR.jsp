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
            <div class="scanCodeSub" style="width: 70%;background-color: antiquewhite">
                <input type="button" style="position: absolute;
                       right: 0;" value="Show" onclick="conf()">
                <%
                    
                    request.setAttribute("show", "null");
                    if(request.getAttribute("show").equals("Cancel")){            
                %>
                    <jsp:include page="InforPackage.jsp"/>
                <%
                    };
                %>
            </div>
            <div class="scanCodeSub" style="width: 30%;background-color: coral;">
                <div class="scanCodeSubContainVideo">
                    <video id="videoID" autoplay></video>
                </div>           
                <h1><b>Quét Mã QR</b></h1>
                <div> 
                    <!--<input type="button" value="Take photo" onclick="capture()" style="width: 200px; height: 30px;"/>--> 
                    <input class="buttonScanCodeSubContain"type="button" value="Send" onclick="send()" /> 
                </div>
                <div class="scanCodeSubContainCanvas">
<!--                    <canvas id="canvasID">
                    </canvas>-->
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
                    { video : true }, 
                    function(stream) { 
                        video.src = window.URL.createObjectURL(stream); 
                    }, 
                    function(e) { 
                        console.log('An error happened:', e); 
                    }
                            );
            function send() { 
                context.drawImage(video, 0, 0, canvas.width, canvas.height);
                var imageData = canvas.toDataURL(); 
                var xmlhttp = new XMLHttpRequest(); 
                xmlhttp.open("POST", "/qrcode/QrCodeController", true); 
                xmlhttp.send(imageData); 
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
